Definitions.

NUMBER = [0-9]+?\.?[0-9]+
WS = [\s\t]


Rules.
{NUMBER}    : {token, {number, TokenLine, {TokenChars}}}.
\+          : {token, {plus, TokenLine}}.
\-          : {token, {minus, TokenLine}}.
\*          : {token, {mult, TokenLine}}.
\/          : {token, {divd, TokenLine}}.
\(          : {token, {lparen, TokenLine}}.
\)          : {token, {rparen, TokenLine}}.
{WS}        : skip_token.

Erlang code.