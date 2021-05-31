:-include(database1).
:-include(database2).
		
chat_bot:-
	format('Ola, sou o chatbot e estou aqui para te ajudar!'),nl,
	format('Vamos comecar?'),nl,
	format('Deseja saber sobre:'),nl,
	  				
	repeat,
	nl, format('------> '),
	read(Input),
	consult(Input, Response),
	format(Response), nl,
	off(Input).

	consult(Input, CorrectResponse) :-
		definida_por(Input, CorrectResponse), !.	
	
	off(Input):-
		Input = ('exit').
