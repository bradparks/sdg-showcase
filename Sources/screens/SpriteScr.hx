package screens;

import sdg.graphics.Sprite;
import sdg.graphics.text.BitmapText;
import sdg.graphics.text.Text.TextAlign;
import sdg.Sdg;
import sdg.atlas.Atlas;
import objects.Fan;

class SpriteScr extends Play
{
	public function new()
	{
		super();
		
		var regions = Atlas.createRegionList('obj_fan001', 84, 96);
		Atlas.saveRegionList(regions, 'fan-anim');

		var crate1 = create(200, 300, new Sprite('obj_crate001'));
		crate1.setSizeAuto();

		var crate2 = create(crate1.x + crate1.width, crate1.y, new Sprite('obj_crate002'));
		crate2.setSizeAuto();

		var crate3 = create(crate2.x + crate2.width, crate1.y, new Sprite('obj_crate003'));
		crate3.setSizeAuto();

		create(crate3.x + crate3.width, crate1.y, new Sprite('obj_crate004'));
		
		create(crate1.x, crate1.y - 96, new Sprite('obj_tv001'));

		create(crate1.x + 100, crate1.y - 84, new Sprite('obj_cookiejar001'));

		add(new Fan(crate1.x + 200, crate1.y - 91));

		create(0, 520, new BitmapText('Sprites', 'Vera', Sdg.gameWidth, { align: TextAlign.Center }));		

		addControls('particles', 'graphiclist');
	}	
}