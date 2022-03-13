%Si algún producto  está completo y se encuentra en transito con el
% pedido recibido y se verifica en la bodega la existencia de los lotes
%  si estan completos, entonces reserva es aprobada

productoA('Paracetamol').
productoA('Ibuprofeno').
productoA('Lactulosa').
productoA('Bupivacaína').
productoA('Lidocaína').
productoA('Alopurinol').

productoB('Analgan').
productoB('Aspirina').
productoB('Naloxona').
productoB('Ácido Valproico').
productoB('fenobarbital').
productoB('Amoxicilina').


transito('Paracetamol','Lactulosa').
transito('Paracetamol','Aspirina').

transito('Paracetamol','Naloxona').
transito('Paracetamol','Lidocaína').
transito('Paracetamol','Ácido Valproico').

transito('Paracetamol','fenobarbital').
transito('Paracetamol','Amoxicilina').
transito('Ibuprofeno','Analgan').
transito('Ibuprofeno','Paracetamol').
transito('Ibuprofeno','Lactulosa').

transito('Ibuprofeno','Bupivacaína').
transito('Ibuprofeno','Naloxona').

transito('Ibuprofeno','Ácido Valproico').
transito('Ibuprofeno','Alopurinol').

transito('Ibuprofeno','Amoxicilina').
transito('Lactulosa','Analgan').
transito('Lactulosa','Paracetamol').
transito('Lactulosa','Ibuprofeno').

transito('Lactulosa','Bupivacaína').
transito('Lactulosa','Naloxona').

transito('Lactulosa','Ácido Valproico').

transito('Lactulosa','fenobarbital').
transito('Lactulosa','Amoxicilina').
transito('Bupivacaína','Analgan').

transito('Bupivacaína','Lactulosa').
transito('Bupivacaína','Aspirina').

transito('Bupivacaína','Naloxona').
transito('Bupivacaína','Lidocaína').
transito('Bupivacaína','Ácido Valproico').

transito('Bupivacaína','fenobarbital').
transito('Bupivacaína','Amoxicilina').
transito('Lidocaína','Analgan').
transito('Lidocaína','Paracetamol').
transito('Lidocaína','Lactulosa').

transito('Lidocaína','Bupivacaína').
transito('Lidocaína','Naloxona').
transito('Lidocaína','Ibuprofeno').

transito('Lidocaína','Alopurinol').
transito('Lidocaína','fenobarbital').

transito('Alopurinol','Analgan').
transito('Alopurinol','Paracetamol').

transito('Alopurinol','Aspirina').
transito('Alopurinol','Bupivacaína').

transito('Alopurinol','Lidocaína').

transito('Alopurinol','Ibuprofeno').
transito('Alopurinol','fenobarbital').

transito('Analgan','Ibuprofeno').
transito('Analgan','Paracetamol').

transito('Analgan','Aspirina').
transito('Analgan','Bupivacaína').
transito('Analgan','Naloxona').
transito('Analgan','Lidocaína').

transito('Analgan','Alopurinol').
transito('Analgan','fenobarbital').

transito('Aspirina','Analgan').
transito('Aspirina','Paracetamol').
transito('Aspirina','Lactulosa').

transito('Aspirina','Bupivacaína').
transito('Aspirina','Naloxona').
transito('Aspirina','Lidocaína').

transito('Aspirina','Alopurinol').
transito('Aspirina','fenobarbital').
transito('Aspirina','Amoxicilina').

transito('Naloxona','Paracetamol').
transito('Naloxona','Lactulosa').
transito('Naloxona','Aspirina').

transito('Naloxona','Ibuprofeno').
transito('Naloxona','Lidocaína').
transito('Naloxona','Ácido Valproico').

transito('Naloxona','fenobarbital').
transito('Naloxona','Amoxicilina').
transito('Ácido Valproico','Analgan').

transito('Ácido Valproico','Lactulosa').
transito('Ácido Valproico','Aspirina').
transito('Ácido Valproico','Bupivacaína').

transito('Ácido Valproico','Lidocaína').
transito('Ácido Valproico','Ibuprofeno').

transito('Ácido Valproico','fenobarbital').
transito('Ácido Valproico','Amoxicilina').
transito('fenobarbital','Analgan').
transito('fenobarbital','Paracetamol').

transito('fenobarbital','Aspirina').
transito('fenobarbital','Bupivacaína').
transito('fenobarbital','Naloxona').

transito('fenobarbital','Ácido Valproico').
transito('fenobarbital','Alopurinol').

transito('fenobarbital','Amoxicilina').
transito('Amoxicilina','Analgan').

transito('Amoxicilina','Lactulosa').
transito('Amoxicilina','Aspirina').
transito('Amoxicilina','Bupivacaína').

transito('Amoxicilina','Lidocaína').
transito('Amoxicilina','Ácido Valproico').

transito('Amoxicilina','fenobarbital').
transito('Amoxicilina','Ibuprofeno').

pedido('Paracetamol','Ibuprofeno').
pedido('Paracetamol','Analgan').
pedido('Paracetamol','Lactulosa').

pedido('Paracetamol','Bupivacaína').
pedido('Paracetamol','Naloxona').
pedido('Paracetamol','Lidocaína').

pedido('Paracetamol','Alopurinol').

pedido('Paracetamol','Amoxicilina').
pedido('Ibuprofeno','Analgan').
pedido('Ibuprofeno','Paracetamol').

pedido('Ibuprofeno','Aspirina').
pedido('Ibuprofeno','Bupivacaína').

pedido('Ibuprofeno','Lidocaína').
pedido('Ibuprofeno','Ácido Valproico').
pedido('Ibuprofeno','Alopurinol').

pedido('Ibuprofeno','Amoxicilina').
pedido('Lactulosa','Analgan').

pedido('Lactulosa','Ibuprofeno').
pedido('Lactulosa','Aspirina').
pedido('Lactulosa','Bupivacaína').

pedido('Lactulosa','Lidocaína').
pedido('Lactulosa','Ácido Valproico').
pedido('Lactulosa','Alopurinol').

pedido('Lactulosa','Amoxicilina').
pedido('Bupivacaína','Analgan').

pedido('Bupivacaína','Lactulosa').

pedido('Bupivacaína','Ibuprofeno').
pedido('Bupivacaína','Naloxona').
pedido('Bupivacaína','Lidocaína').
pedido('Bupivacaína','Ácido Valproico').

pedido('Bupivacaína','fenobarbital').
pedido('Bupivacaína','Amoxicilina').
pedido('Lidocaína','Analgan').
pedido('Lidocaína','Paracetamol').

pedido('Lidocaína','Aspirina').
pedido('Lidocaína','Bupivacaína').

pedido('Lidocaína','Ibuprofeno').
pedido('Lidocaína','Ácido Valproico').
pedido('Lidocaína','Alopurinol').

pedido('Lidocaína','Amoxicilina').
pedido('Alopurinol','Analgan').

pedido('Alopurinol','Lactulosa').
pedido('Alopurinol','Aspirina').

pedido('Alopurinol','Naloxona').
pedido('Alopurinol','Lidocaína').

pedido('Alopurinol','Ibuprofeno').
pedido('Alopurinol','fenobarbital').
pedido('Alopurinol','Amoxicilina').
pedido('Analgan','Ibuprofeno').

pedido('Analgan','Lactulosa').
pedido('Analgan','Aspirina').
pedido('Analgan','Bupivacaína').

pedido('Analgan','Lidocaína').
pedido('Analgan','Ácido Valproico').
pedido('Analgan','Alopurinol').
pedido('Analgan','fenobarbital').
pedido('Analgan','Amoxicilina').

pedido('Aspirina','Paracetamol').
pedido('Aspirina','Lactulosa').
pedido('Aspirina','Ibuprofeno').
pedido('Aspirina','Bupivacaína').

pedido('Aspirina','Lidocaína').
pedido('Aspirina','Ácido Valproico').
pedido('Aspirina','Alopurinol').

pedido('Aspirina','Amoxicilina').
pedido('Naloxona','Analgan').
pedido('Naloxona','Paracetamol').
pedido('Naloxona','Lactulosa').

pedido('Naloxona','Bupivacaína').
pedido('Naloxona','Ibuprofeno').

pedido('Naloxona','Ácido Valproico').
pedido('Naloxona','Alopurinol').
pedido('Naloxona','fenobarbital').
pedido('Naloxona','Amoxicilina').
pedido('Ácido Valproico','Analgan').

pedido('Ácido Valproico','Lactulosa').
pedido('Ácido Valproico','Aspirina').
pedido('Ácido Valproico','Bupivacaína').
pedido('Ácido Valproico','Naloxona').
pedido('Ácido Valproico','Lidocaína').

pedido('Ácido Valproico','Alopurinol').
pedido('Ácido Valproico','fenobarbital').
pedido('Ácido Valproico','Amoxicilina').
pedido('fenobarbital','Analgan').
pedido('fenobarbital','Paracetamol').
pedido('fenobarbital','Lactulosa').

pedido('fenobarbital','Bupivacaína').
pedido('fenobarbital','Naloxona').
pedido('fenobarbital','Lidocaína').
pedido('fenobarbital','Ácido Valproico').

pedido('fenobarbital','Ibuprofeno').
pedido('fenobarbital','Amoxicilina').
pedido('Amoxicilina','Analgan').
pedido('Amoxicilina','Paracetamol').
pedido('Amoxicilina','Lactulosa').

pedido('Amoxicilina','Bupivacaína').
pedido('Amoxicilina','Naloxona').
pedido('Amoxicilina','Lidocaína').

pedido('Amoxicilina','Alopurinol').
pedido('Amoxicilina','fenobarbital').
pedido('Amoxicilina','Ibuprofeno').


bodega('Paracetamol','Ibuprofeno').
bodega('Paracetamol','Analgan').
bodega('Paracetamol','Lactulosa').
bodega('Paracetamol','Aspirina').
bodega('Paracetamol','Bupivacaína').

bodega('Paracetamol','Lidocaína').
bodega('Paracetamol','Ácido Valproico').
bodega('Paracetamol','Alopurinol').
bodega('Paracetamol','fenobarbital').
bodega('Paracetamol','Amoxicilina').
bodega('Ibuprofeno','Analgan').

bodega('Ibuprofeno','Lactulosa').
bodega('Ibuprofeno','Aspirina').
bodega('Ibuprofeno','Bupivacaína').
bodega('Ibuprofeno','Naloxona').

bodega('Ibuprofeno','Ácido Valproico').
bodega('Ibuprofeno','Alopurinol').
bodega('Ibuprofeno','fenobarbital').
bodega('Ibuprofeno','Amoxicilina').
bodega('Lactulosa','Analgan').
bodega('Lactulosa','Paracetamol').

bodega('Lactulosa','Aspirina').
bodega('Lactulosa','Bupivacaína').

bodega('Lactulosa','Lidocaína').
bodega('Lactulosa','Ácido Valproico').
bodega('Lactulosa','Alopurinol').
bodega('Lactulosa','fenobarbital').
bodega('Lactulosa','Amoxicilina').
bodega('Bupivacaína','Analgan').
bodega('Bupivacaína','Paracetamol').

bodega('Bupivacaína','Aspirina').
bodega('Bupivacaína','Ibuprofeno').
bodega('Bupivacaína','Naloxona').
bodega('Bupivacaína','Lidocaína').

bodega('Bupivacaína','Alopurinol').
bodega('Bupivacaína','fenobarbital').
bodega('Bupivacaína','Amoxicilina').
bodega('Lidocaína','Analgan').
bodega('Lidocaína','Paracetamol').
bodega('Lidocaína','Lactulosa').
bodega('Lidocaína','Aspirina').

bodega('Lidocaína','Naloxona').
bodega('Lidocaína','Ibuprofeno').

bodega('Lidocaína','Alopurinol').
bodega('Lidocaína','fenobarbital').
bodega('Lidocaína','Amoxicilina').
bodega('Alopurinol','Analgan').

bodega('Alopurinol','Lactulosa').
bodega('Alopurinol','Aspirina').
bodega('Alopurinol','Bupivacaína').
bodega('Alopurinol','Naloxona').

bodega('Alopurinol','Ácido Valproico').
bodega('Alopurinol','Ibuprofeno').
bodega('Alopurinol','fenobarbital').
bodega('Alopurinol','Amoxicilina').
bodega('Analgan','Ibuprofeno').
bodega('Analgan','Paracetamol').
bodega('Analgan','Lactulosa').

bodega('Analgan','Bupivacaína').
bodega('Analgan','Naloxona').
bodega('Analgan','Lidocaína').
bodega('Analgan','Ácido Valproico').
bodega('Analgan','Alopurinol').
bodega('Analgan','fenobarbital').
bodega('Analgan','Amoxicilina').

bodega('Aspirina','Paracetamol').
bodega('Aspirina','Lactulosa').
bodega('Aspirina','Ibuprofeno').

bodega('Aspirina','Naloxona').
bodega('Aspirina','Lidocaína').
bodega('Aspirina','Ácido Valproico').

bodega('Aspirina','fenobarbital').
bodega('Aspirina','Amoxicilina').
bodega('Naloxona','Analgan').
bodega('Naloxona','Paracetamol').

bodega('Naloxona','Aspirina').
bodega('Naloxona','Bupivacaína').
bodega('Naloxona','Ibuprofeno').
bodega('Naloxona','Lidocaína').

bodega('Naloxona','Alopurinol').
bodega('Naloxona','fenobarbital').
bodega('Naloxona','Amoxicilina').
bodega('Ácido Valproico','Analgan').

bodega('Ácido Valproico','Lactulosa').
bodega('Ácido Valproico','Aspirina').
bodega('Ácido Valproico','Bupivacaína').

bodega('Ácido Valproico','Lidocaína').
bodega('Ácido Valproico','Ibuprofeno').

bodega('Ácido Valproico','fenobarbital').
bodega('Ácido Valproico','Amoxicilina').
bodega('fenobarbital','Analgan').
bodega('fenobarbital','Paracetamol').

bodega('fenobarbital','Aspirina').
bodega('fenobarbital','Bupivacaína').
bodega('fenobarbital','Naloxona').
bodega('fenobarbital','Lidocaína').

bodega('fenobarbital','Alopurinol').
bodega('fenobarbital','Ibuprofeno').
bodega('fenobarbital','Amoxicilina').
bodega('Amoxicilina','Analgan').

bodega('Amoxicilina','Lactulosa').
bodega('Amoxicilina','Aspirina').
bodega('Amoxicilina','Bupivacaína').
bodega('Amoxicilina','Naloxona').

bodega('Amoxicilina','Ácido Valproico').
bodega('Amoxicilina','Alopurinol').
bodega('Amoxicilina','fenobarbital').
bodega('Amoxicilina','Ibuprofeno').


lote('Paracetamol','Ibuprofeno').
lote('Paracetamol','Analgan').
lote('Paracetamol','Lactulosa').

lote('Paracetamol','Bupivacaína').
lote('Paracetamol','Naloxona').
lote('Paracetamol','Lidocaína').

lote('Paracetamol','Alopurinol').
lote('Paracetamol','fenobarbital').
lote('Paracetamol','Amoxicilina').
lote('Ibuprofeno','Analgan').

lote('Ibuprofeno','Lactulosa').
lote('Ibuprofeno','Aspirina').

lote('Ibuprofeno','Naloxona').
lote('Ibuprofeno','Lidocaína').
lote('Ibuprofeno','Ácido Valproico').
lote('Ibuprofeno','Alopurinol').
lote('Ibuprofeno','fenobarbital').
lote('Ibuprofeno','Amoxicilina').
lote('Lactulosa','Analgan').

lote('Lactulosa','Ibuprofeno').
lote('Lactulosa','Aspirina').
lote('Lactulosa','Bupivacaína').

lote('Lactulosa','Lidocaína').
lote('Lactulosa','Ácido Valproico').
lote('Lactulosa','Alopurinol').
lote('Lactulosa','fenobarbital').

lote('Bupivacaína','Analgan').
lote('Bupivacaína','Paracetamol').
lote('Bupivacaína','Lactulosa').

lote('Bupivacaína','Ibuprofeno').
lote('Bupivacaína','Naloxona').
lote('Bupivacaína','Lidocaína').
lote('Bupivacaína','Ácido Valproico').

lote('Bupivacaína','fenobarbital').
lote('Bupivacaína','Amoxicilina').
lote('Lidocaína','Analgan').
lote('Lidocaína','Paracetamol').

lote('Lidocaína','Aspirina').
lote('Lidocaína','Bupivacaína').
lote('Lidocaína','Naloxona').
lote('Lidocaína','Ibuprofeno').
lote('Lidocaína','Ácido Valproico').
lote('Lidocaína','Alopurinol').

lote('Lidocaína','Amoxicilina').
lote('Alopurinol','Analgan').
lote('Alopurinol','Paracetamol').

lote('Alopurinol','Aspirina').
lote('Alopurinol','Bupivacaína').

lote('Alopurinol','Lidocaína').
lote('Alopurinol','Ácido Valproico').
lote('Alopurinol','Ibuprofeno').

lote('Alopurinol','Amoxicilina').
lote('Analgan','Ibuprofeno').
lote('Analgan','Paracetamol').

lote('Analgan','Aspirina').
lote('Analgan','Bupivacaína').
lote('Analgan','Naloxona').
lote('Analgan','Lidocaína').

lote('Analgan','Alopurinol').
lote('Analgan','fenobarbital').
lote('Analgan','Amoxicilina').
lote('Aspirina','Analgan').

lote('Aspirina','Lactulosa').

lote('Aspirina','Bupivacaína').
lote('Aspirina','Naloxona').
lote('Aspirina','Lidocaína').
lote('Aspirina','Ácido Valproico').

lote('Aspirina','fenobarbital').
lote('Aspirina','Amoxicilina').
lote('Naloxona','Analgan').
lote('Naloxona','Paracetamol').

lote('Naloxona','Aspirina').
lote('Naloxona','Bupivacaína').
lote('Naloxona','Ibuprofeno').

lote('Naloxona','Ácido Valproico').
lote('Naloxona','Alopurinol').
lote('Naloxona','fenobarbital').

lote('Ácido Valproico','Analgan').

lote('Ácido Valproico','Lactulosa').
lote('Ácido Valproico','Aspirina').

lote('Ácido Valproico','Naloxona').
lote('Ácido Valproico','Lidocaína').

lote('Ácido Valproico','Alopurinol').
lote('Ácido Valproico','fenobarbital').
lote('Ácido Valproico','Amoxicilina').
lote('fenobarbital','Analgan').

lote('fenobarbital','Lactulosa').
lote('fenobarbital','Aspirina').
lote('fenobarbital','Bupivacaína').
lote('fenobarbital','Naloxona').
lote('fenobarbital','Lidocaína').
lote('fenobarbital','Ácido Valproico').
lote('fenobarbital','Alopurinol').

lote('fenobarbital','Amoxicilina').
lote('Amoxicilina','Analgan').
lote('Amoxicilina','Paracetamol').
lote('Amoxicilina','Lactulosa').
lote('Amoxicilina','Aspirina').
lote('Amoxicilina','Bupivacaína').
lote('Amoxicilina','Naloxona').
lote('Amoxicilina','Lidocaína').
lote('Amoxicilina','Ácido Valproico').
lote('Amoxicilina','Alopurinol').
lote('Amoxicilina','fenobarbital').
lote('Amoxicilina','Ibuprofeno').

aprobacion(A,B) :- 
    	productoA(A), productoB(B), transito(A, B), pedido(A, B), bodega(A, B), lote(A, B).



