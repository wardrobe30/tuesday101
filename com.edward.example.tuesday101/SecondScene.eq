
/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{
	  SESprite image1;
	  SESprite image2;
                
        public void initialize(SEResourceCache rsc) {
            base.initialize(rsc);
            add_sprite_for_color(Color.instance("blue"), get_scene_width(), get_scene_height());
            rsc.prepare_image("mysprite2","rush", get_scene_width(), get_scene_height());
            image1= add_sprite_for_image(SEImage.for_resource("mysprite2"));
            image1.move(0,0);

			rsc.prepare_image("mymain","main",get_scene_width()*0.2, get_scene_height()*0.2);
			image2= add_sprite_for_image(SEImage.for_resource("mymain"));
	        image2.move(get_scene_width()*0.75,get_scene_height()*0.75);
        }

		public void on_pointer_press(SEPointerInfo pi) {
            base.on_pointer_press(pi);
            if (pi.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.75*get_scene_width(),0.75*get_scene_height())) {
                switch_scene(new Main());
            }
		}

	public void cleanup() {
		base.cleanup();
	}
}