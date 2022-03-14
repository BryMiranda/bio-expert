%Si algun producto  estA completo y se encuentra en transito con el
% pedido recibido y se verifica en la bodega la existencia de los lotes
%  si estan completos, entonces reserva es aprobada

productoA('Paracetamol').
productoA('Ibuprofeno').
productoA('Lactulosa').
productoA('Bupivacaina').
productoA('Lidocaina').
productoA('Alopurinol').

productoB('Analgan').
productoB('Aspirina').
productoB('Naloxona').
productoB('Acido Valproico').
productoB('fenobarbital').
productoB('Amoxicilina').


transito('Paracetamol','Lactulosa').
transito('Paracetamol','Aspirina').

transito('Paracetamol','Naloxona').
transito('Paracetamol','Lidocaina').
transito('Paracetamol','Acido Valproico').

transito('Paracetamol','fenobarbital').
transito('Paracetamol','Amoxicilina').
transito('Ibuprofeno','Analgan').
transito('Ibuprofeno','Paracetamol').
transito('Ibuprofeno','Lactulosa').

transito('Ibuprofeno','Bupivacaina').
transito('Ibuprofeno','Naloxona').

transito('Ibuprofeno','Acido Valproico').
transito('Ibuprofeno','Alopurinol').

transito('Ibuprofeno','Amoxicilina').
transito('Lactulosa','Analgan').
transito('Lactulosa','Paracetamol').
transito('Lactulosa','Ibuprofeno').

transito('Lactulosa','Bupivacaina').
transito('Lactulosa','Naloxona').

transito('Lactulosa','Acido Valproico').

transito('Lactulosa','fenobarbital').
transito('Lactulosa','Amoxicilina').
transito('Bupivacaina','Analgan').

transito('Bupivacaina','Lactulosa').
transito('Bupivacaina','Aspirina').

transito('Bupivacaina','Naloxona').
transito('Bupivacaina','Lidocaina').
transito('Bupivacaina','Acido Valproico').

transito('Bupivacaina','fenobarbital').
transito('Bupivacaina','Amoxicilina').
transito('Lidocaina','Analgan').
transito('Lidocaina','Paracetamol').
transito('Lidocaina','Lactulosa').

transito('Lidocaina','Bupivacaina').
transito('Lidocaina','Naloxona').
transito('Lidocaina','Ibuprofeno').

transito('Lidocaina','Alopurinol').
transito('Lidocaina','fenobarbital').

transito('Alopurinol','Analgan').
transito('Alopurinol','Paracetamol').

transito('Alopurinol','Aspirina').
transito('Alopurinol','Bupivacaina').

transito('Alopurinol','Lidocaina').

transito('Alopurinol','Ibuprofeno').
transito('Alopurinol','fenobarbital').

transito('Analgan','Ibuprofeno').
transito('Analgan','Paracetamol').

transito('Analgan','Aspirina').
transito('Analgan','Bupivacaina').
transito('Analgan','Naloxona').
transito('Analgan','Lidocaina').

transito('Analgan','Alopurinol').
transito('Analgan','fenobarbital').

transito('Aspirina','Analgan').
transito('Aspirina','Paracetamol').
transito('Aspirina','Lactulosa').

transito('Aspirina','Bupivacaina').
transito('Aspirina','Naloxona').
transito('Aspirina','Lidocaina').

transito('Aspirina','Alopurinol').
transito('Aspirina','fenobarbital').
transito('Aspirina','Amoxicilina').

transito('Naloxona','Paracetamol').
transito('Naloxona','Lactulosa').
transito('Naloxona','Aspirina').

transito('Naloxona','Ibuprofeno').
transito('Naloxona','Lidocaina').
transito('Naloxona','Acido Valproico').

transito('Naloxona','fenobarbital').
transito('Naloxona','Amoxicilina').
transito('Acido Valproico','Analgan').

transito('Acido Valproico','Lactulosa').
transito('Acido Valproico','Aspirina').
transito('Acido Valproico','Bupivacaina').

transito('Acido Valproico','Lidocaina').
transito('Acido Valproico','Ibuprofeno').

transito('Acido Valproico','fenobarbital').
transito('Acido Valproico','Amoxicilina').
transito('fenobarbital','Analgan').
transito('fenobarbital','Paracetamol').

transito('fenobarbital','Aspirina').
transito('fenobarbital','Bupivacaina').
transito('fenobarbital','Naloxona').

transito('fenobarbital','Acido Valproico').
transito('fenobarbital','Alopurinol').

transito('fenobarbital','Amoxicilina').
transito('Amoxicilina','Analgan').

transito('Amoxicilina','Lactulosa').
transito('Amoxicilina','Aspirina').
transito('Amoxicilina','Bupivacaina').

transito('Amoxicilina','Lidocaina').
transito('Amoxicilina','Acido Valproico').

transito('Amoxicilina','fenobarbital').
transito('Amoxicilina','Ibuprofeno').

pedido('Paracetamol','Ibuprofeno').
pedido('Paracetamol','Analgan').
pedido('Paracetamol','Lactulosa').

pedido('Paracetamol','Bupivacaina').
pedido('Paracetamol','Naloxona').
pedido('Paracetamol','Lidocaina').

pedido('Paracetamol','Alopurinol').

pedido('Paracetamol','Amoxicilina').
pedido('Ibuprofeno','Analgan').
pedido('Ibuprofeno','Paracetamol').

pedido('Ibuprofeno','Aspirina').
pedido('Ibuprofeno','Bupivacaina').

pedido('Ibuprofeno','Lidocaina').
pedido('Ibuprofeno','Acido Valproico').
pedido('Ibuprofeno','Alopurinol').

pedido('Ibuprofeno','Amoxicilina').
pedido('Lactulosa','Analgan').

pedido('Lactulosa','Ibuprofeno').
pedido('Lactulosa','Aspirina').
pedido('Lactulosa','Bupivacaina').

pedido('Lactulosa','Lidocaina').
pedido('Lactulosa','Acido Valproico').
pedido('Lactulosa','Alopurinol').

pedido('Lactulosa','Amoxicilina').
pedido('Bupivacaina','Analgan').

pedido('Bupivacaina','Lactulosa').

pedido('Bupivacaina','Ibuprofeno').
pedido('Bupivacaina','Naloxona').
pedido('Bupivacaina','Lidocaina').
pedido('Bupivacaina','Acido Valproico').

pedido('Bupivacaina','fenobarbital').
pedido('Bupivacaina','Amoxicilina').
pedido('Lidocaina','Analgan').
pedido('Lidocaina','Paracetamol').

pedido('Lidocaina','Aspirina').
pedido('Lidocaina','Bupivacaina').

pedido('Lidocaina','Ibuprofeno').
pedido('Lidocaina','Acido Valproico').
pedido('Lidocaina','Alopurinol').

pedido('Lidocaina','Amoxicilina').
pedido('Alopurinol','Analgan').

pedido('Alopurinol','Lactulosa').
pedido('Alopurinol','Aspirina').

pedido('Alopurinol','Naloxona').
pedido('Alopurinol','Lidocaina').

pedido('Alopurinol','Ibuprofeno').
pedido('Alopurinol','fenobarbital').
pedido('Alopurinol','Amoxicilina').
pedido('Analgan','Ibuprofeno').

pedido('Analgan','Lactulosa').
pedido('Analgan','Aspirina').
pedido('Analgan','Bupivacaina').

pedido('Analgan','Lidocaina').
pedido('Analgan','Acido Valproico').
pedido('Analgan','Alopurinol').
pedido('Analgan','fenobarbital').
pedido('Analgan','Amoxicilina').

pedido('Aspirina','Paracetamol').
pedido('Aspirina','Lactulosa').
pedido('Aspirina','Ibuprofeno').
pedido('Aspirina','Bupivacaina').

pedido('Aspirina','Lidocaina').
pedido('Aspirina','Acido Valproico').
pedido('Aspirina','Alopurinol').

pedido('Aspirina','Amoxicilina').
pedido('Naloxona','Analgan').
pedido('Naloxona','Paracetamol').
pedido('Naloxona','Lactulosa').

pedido('Naloxona','Bupivacaina').
pedido('Naloxona','Ibuprofeno').

pedido('Naloxona','Acido Valproico').
pedido('Naloxona','Alopurinol').
pedido('Naloxona','fenobarbital').
pedido('Naloxona','Amoxicilina').
pedido('Acido Valproico','Analgan').

pedido('Acido Valproico','Lactulosa').
pedido('Acido Valproico','Aspirina').
pedido('Acido Valproico','Bupivacaina').
pedido('Acido Valproico','Naloxona').
pedido('Acido Valproico','Lidocaina').

pedido('Acido Valproico','Alopurinol').
pedido('Acido Valproico','fenobarbital').
pedido('Acido Valproico','Amoxicilina').
pedido('fenobarbital','Analgan').
pedido('fenobarbital','Paracetamol').
pedido('fenobarbital','Lactulosa').

pedido('fenobarbital','Bupivacaina').
pedido('fenobarbital','Naloxona').
pedido('fenobarbital','Lidocaina').
pedido('fenobarbital','Acido Valproico').

pedido('fenobarbital','Ibuprofeno').
pedido('fenobarbital','Amoxicilina').
pedido('Amoxicilina','Analgan').
pedido('Amoxicilina','Paracetamol').
pedido('Amoxicilina','Lactulosa').

pedido('Amoxicilina','Bupivacaina').
pedido('Amoxicilina','Naloxona').
pedido('Amoxicilina','Lidocaina').

pedido('Amoxicilina','Alopurinol').
pedido('Amoxicilina','fenobarbital').
pedido('Amoxicilina','Ibuprofeno').


bodega('Paracetamol','Ibuprofeno').
bodega('Paracetamol','Analgan').
bodega('Paracetamol','Lactulosa').
bodega('Paracetamol','Aspirina').
bodega('Paracetamol','Bupivacaina').

bodega('Paracetamol','Lidocaina').
bodega('Paracetamol','Acido Valproico').
bodega('Paracetamol','Alopurinol').
bodega('Paracetamol','fenobarbital').
bodega('Paracetamol','Amoxicilina').
bodega('Ibuprofeno','Analgan').

bodega('Ibuprofeno','Lactulosa').
bodega('Ibuprofeno','Aspirina').
bodega('Ibuprofeno','Bupivacaina').
bodega('Ibuprofeno','Naloxona').

bodega('Ibuprofeno','Acido Valproico').
bodega('Ibuprofeno','Alopurinol').
bodega('Ibuprofeno','fenobarbital').
bodega('Ibuprofeno','Amoxicilina').
bodega('Lactulosa','Analgan').
bodega('Lactulosa','Paracetamol').

bodega('Lactulosa','Aspirina').
bodega('Lactulosa','Bupivacaina').

bodega('Lactulosa','Lidocaina').
bodega('Lactulosa','Acido Valproico').
bodega('Lactulosa','Alopurinol').
bodega('Lactulosa','fenobarbital').
bodega('Lactulosa','Amoxicilina').
bodega('Bupivacaina','Analgan').
bodega('Bupivacaina','Paracetamol').

bodega('Bupivacaina','Aspirina').
bodega('Bupivacaina','Ibuprofeno').
bodega('Bupivacaina','Naloxona').
bodega('Bupivacaina','Lidocaina').

bodega('Bupivacaina','Alopurinol').
bodega('Bupivacaina','fenobarbital').
bodega('Bupivacaina','Amoxicilina').
bodega('Lidocaina','Analgan').
bodega('Lidocaina','Paracetamol').
bodega('Lidocaina','Lactulosa').
bodega('Lidocaina','Aspirina').

bodega('Lidocaina','Naloxona').
bodega('Lidocaina','Ibuprofeno').

bodega('Lidocaina','Alopurinol').
bodega('Lidocaina','fenobarbital').
bodega('Lidocaina','Amoxicilina').
bodega('Alopurinol','Analgan').

bodega('Alopurinol','Lactulosa').
bodega('Alopurinol','Aspirina').
bodega('Alopurinol','Bupivacaina').
bodega('Alopurinol','Naloxona').

bodega('Alopurinol','Acido Valproico').
bodega('Alopurinol','Ibuprofeno').
bodega('Alopurinol','fenobarbital').
bodega('Alopurinol','Amoxicilina').
bodega('Analgan','Ibuprofeno').
bodega('Analgan','Paracetamol').
bodega('Analgan','Lactulosa').

bodega('Analgan','Bupivacaina').
bodega('Analgan','Naloxona').
bodega('Analgan','Lidocaina').
bodega('Analgan','Acido Valproico').
bodega('Analgan','Alopurinol').
bodega('Analgan','fenobarbital').
bodega('Analgan','Amoxicilina').

bodega('Aspirina','Paracetamol').
bodega('Aspirina','Lactulosa').
bodega('Aspirina','Ibuprofeno').

bodega('Aspirina','Naloxona').
bodega('Aspirina','Lidocaina').
bodega('Aspirina','Acido Valproico').

bodega('Aspirina','fenobarbital').
bodega('Aspirina','Amoxicilina').
bodega('Naloxona','Analgan').
bodega('Naloxona','Paracetamol').

bodega('Naloxona','Aspirina').
bodega('Naloxona','Bupivacaina').
bodega('Naloxona','Ibuprofeno').
bodega('Naloxona','Lidocaina').

bodega('Naloxona','Alopurinol').
bodega('Naloxona','fenobarbital').
bodega('Naloxona','Amoxicilina').
bodega('Acido Valproico','Analgan').

bodega('Acido Valproico','Lactulosa').
bodega('Acido Valproico','Aspirina').
bodega('Acido Valproico','Bupivacaina').

bodega('Acido Valproico','Lidocaina').
bodega('Acido Valproico','Ibuprofeno').

bodega('Acido Valproico','fenobarbital').
bodega('Acido Valproico','Amoxicilina').
bodega('fenobarbital','Analgan').
bodega('fenobarbital','Paracetamol').

bodega('fenobarbital','Aspirina').
bodega('fenobarbital','Bupivacaina').
bodega('fenobarbital','Naloxona').
bodega('fenobarbital','Lidocaina').

bodega('fenobarbital','Alopurinol').
bodega('fenobarbital','Ibuprofeno').
bodega('fenobarbital','Amoxicilina').
bodega('Amoxicilina','Analgan').

bodega('Amoxicilina','Lactulosa').
bodega('Amoxicilina','Aspirina').
bodega('Amoxicilina','Bupivacaina').
bodega('Amoxicilina','Naloxona').

bodega('Amoxicilina','Acido Valproico').
bodega('Amoxicilina','Alopurinol').
bodega('Amoxicilina','fenobarbital').
bodega('Amoxicilina','Ibuprofeno').


lote('Paracetamol','Ibuprofeno').
lote('Paracetamol','Analgan').
lote('Paracetamol','Lactulosa').

lote('Paracetamol','Bupivacaina').
lote('Paracetamol','Naloxona').
lote('Paracetamol','Lidocaina').

lote('Paracetamol','Alopurinol').
lote('Paracetamol','fenobarbital').
lote('Paracetamol','Amoxicilina').
lote('Ibuprofeno','Analgan').

lote('Ibuprofeno','Lactulosa').
lote('Ibuprofeno','Aspirina').

lote('Ibuprofeno','Naloxona').
lote('Ibuprofeno','Lidocaina').
lote('Ibuprofeno','Acido Valproico').
lote('Ibuprofeno','Alopurinol').
lote('Ibuprofeno','fenobarbital').
lote('Ibuprofeno','Amoxicilina').
lote('Lactulosa','Analgan').

lote('Lactulosa','Ibuprofeno').
lote('Lactulosa','Aspirina').
lote('Lactulosa','Bupivacaina').

lote('Lactulosa','Lidocaina').
lote('Lactulosa','Acido Valproico').
lote('Lactulosa','Alopurinol').
lote('Lactulosa','fenobarbital').

lote('Bupivacaina','Analgan').
lote('Bupivacaina','Paracetamol').
lote('Bupivacaina','Lactulosa').

lote('Bupivacaina','Ibuprofeno').
lote('Bupivacaina','Naloxona').
lote('Bupivacaina','Lidocaina').
lote('Bupivacaina','Acido Valproico').

lote('Bupivacaina','fenobarbital').
lote('Bupivacaina','Amoxicilina').
lote('Lidocaina','Analgan').
lote('Lidocaina','Paracetamol').

lote('Lidocaina','Aspirina').
lote('Lidocaina','Bupivacaina').
lote('Lidocaina','Naloxona').
lote('Lidocaina','Ibuprofeno').
lote('Lidocaina','Acido Valproico').
lote('Lidocaina','Alopurinol').

lote('Lidocaina','Amoxicilina').
lote('Alopurinol','Analgan').
lote('Alopurinol','Paracetamol').

lote('Alopurinol','Aspirina').
lote('Alopurinol','Bupivacaina').

lote('Alopurinol','Lidocaina').
lote('Alopurinol','Acido Valproico').
lote('Alopurinol','Ibuprofeno').

lote('Alopurinol','Amoxicilina').
lote('Analgan','Ibuprofeno').
lote('Analgan','Paracetamol').

lote('Analgan','Aspirina').
lote('Analgan','Bupivacaina').
lote('Analgan','Naloxona').
lote('Analgan','Lidocaina').

lote('Analgan','Alopurinol').
lote('Analgan','fenobarbital').
lote('Analgan','Amoxicilina').
lote('Aspirina','Analgan').

lote('Aspirina','Lactulosa').

lote('Aspirina','Bupivacaina').
lote('Aspirina','Naloxona').
lote('Aspirina','Lidocaina').
lote('Aspirina','Acido Valproico').

lote('Aspirina','fenobarbital').
lote('Aspirina','Amoxicilina').
lote('Naloxona','Analgan').
lote('Naloxona','Paracetamol').

lote('Naloxona','Aspirina').
lote('Naloxona','Bupivacaina').
lote('Naloxona','Ibuprofeno').

lote('Naloxona','Acido Valproico').
lote('Naloxona','Alopurinol').
lote('Naloxona','fenobarbital').

lote('Acido Valproico','Analgan').

lote('Acido Valproico','Lactulosa').
lote('Acido Valproico','Aspirina').

lote('Acido Valproico','Naloxona').
lote('Acido Valproico','Lidocaina').

lote('Acido Valproico','Alopurinol').
lote('Acido Valproico','fenobarbital').
lote('Acido Valproico','Amoxicilina').
lote('fenobarbital','Analgan').

lote('fenobarbital','Lactulosa').
lote('fenobarbital','Aspirina').
lote('fenobarbital','Bupivacaina').
lote('fenobarbital','Naloxona').
lote('fenobarbital','Lidocaina').
lote('fenobarbital','Acido Valproico').
lote('fenobarbital','Alopurinol').

lote('fenobarbital','Amoxicilina').
lote('Amoxicilina','Analgan').
lote('Amoxicilina','Paracetamol').
lote('Amoxicilina','Lactulosa').
lote('Amoxicilina','Aspirina').
lote('Amoxicilina','Bupivacaina').
lote('Amoxicilina','Naloxona').
lote('Amoxicilina','Lidocaina').
lote('Amoxicilina','Acido Valproico').
lote('Amoxicilina','Alopurinol').
lote('Amoxicilina','fenobarbital').
lote('Amoxicilina','Ibuprofeno').

aprobacion(A,B) :- 
    	productoA(A), productoB(B), transito(A, B), pedido(A, B), bodega(A, B), lote(A, B).



