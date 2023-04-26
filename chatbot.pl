% Projeto Integrador de Competencias Em Ciencias da Computacao.
% Autor: Pedro Figueireo de Oliveira.
% Projeto: ChatBot de Perguntas e Respostas.
% Assunto: Redes de Computadores.
% Linguagem: Prolog.


:-include(base_dados_rede_1).
:-include(base_dados_rede_2).

chatbot:-
	format('Ola! Eu sou o ChatBot. E estou aqui para tirar suas duvidas sobre redes.'),nl,
	format('O que voce deseja saber sobre? '),nl,

	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,
	encerra_sessao(Entrada).

consulta_base_dados(Entrada, RespostaCorreta) :-
	definida_por(Entrada, RespostaCorreta), !.

encerra_sessao(Entrada):-
	Entrada = ('fim').



