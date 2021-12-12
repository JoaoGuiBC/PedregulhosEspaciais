switch(room) {	
	case rm_start:
		var color = c_yellow;
	
		draw_set_font(fnt_title);
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width/2, 50,
			"PEDREGULHOS ESPACIAIS",
			3, 3, 0, color, color, color, color, 1
		);
		
		draw_text(
			room_width/2, 150,
@"Alcance 1.000 pontos para vencer!

CIMA: mover
DIREITA/ESQUERDA: mudar direção
ESPAÇO: atirar

APERTE ENTER PARA COMEÇAR
"
		);
		
		draw_set_halign(fa_left);
		break;
		
	case rm_game:
		draw_set_font(fnt_menu);
	
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
		
	case rm_win:
		var color = c_green;
	
		draw_set_font(fnt_title);
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width/2, 100,
			"VOCÊ VENCEU!",
			3, 3, 0, color, color, color, color, 1
		);
		
		draw_text(
			room_width/2, 200,
			"APERTE ENTER PARA RECOMEÇAR"
		);
		
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		var color = c_red;
	
		draw_set_font(fnt_title);
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width/2, 100,
			"FIM DE JOGO",
			3, 3, 0, color, color, color, color, 1
		);
		
		draw_text(
			room_width/2, 200,
			"PONTUAÇÃO FINAL: " + string(score)
		);
		
		draw_text(
			room_width/2, 250,
			"APERTE ENTER PARA RECOMEÇAR"
		);
		
		draw_set_halign(fa_left);
		break;
}