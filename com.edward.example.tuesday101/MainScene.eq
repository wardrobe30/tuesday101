
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{

        SESprite image1;
        SESprite image2;
        SESprite image3;
        SESprite image4;
        
        
        public void initialize(SEResourceCache rsc) {
            base.initialize(rsc);
            add_sprite_for_color(Color.instance("blue"), get_scene_width(), get_scene_height());

            rsc.prepare_image("mysprite","megaman",get_scene_width()*0.5, get_scene_height()*0.5);
            rsc.prepare_image("mysprite2","rush",get_scene_width()*0.5, get_scene_height()*0.5);
            rsc.prepare_image("mysprite3","roll",get_scene_width()*0.5, get_scene_height()*0.5);
            rsc.prepare_image("mysprite4","doctor",get_scene_width()*0.5, get_scene_height()*0.5);

                             
            image1= add_sprite_for_image(SEImage.for_resource("mysprite"));
            image2= add_sprite_for_image(SEImage.for_resource("mysprite2"));
            image3= add_sprite_for_image(SEImage.for_resource("mysprite3"));
            image4= add_sprite_for_image(SEImage.for_resource("mysprite4"));
         
            
            image1.move(0,0);
            image2.move(get_scene_width()*0.5,0);
            image3.move(0, get_scene_height()*0.5);
            image4.move(get_scene_width()*0.5,get_scene_height()*0.5);
            
        }

            public void on_pointer_press(SEPointerInfo pi) {
                  base.on_pointer_press(pi);
                  if (pi.is_inside(0,0,get_scene_width()*0.5, get_scene_height()*0.5)) {
                     switch_scene(new FirstScene());
                  }

                  else if(pi.is_inside(get_scene_width()*0.5,0,get_scene_width()*0.5, get_scene_height()*0.5)) {
                     switch_scene(new SecondScene());
                  }

                 else if(pi.is_inside(0,get_scene_height()*0.5,get_scene_width()*0.5, get_scene_height()*0.5)) {
                     switch_scene(new ThirdScene());
                  }

                  else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5,get_scene_width()*0.5, get_scene_height()*0.5)) {
                     switch_scene(new FourthScene());
                  }
        }



	public void cleanup() {
		base.cleanup();
	}
}