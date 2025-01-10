# Documentação

## Requisitos

## Texto

### 1. Cadastro de paciente

Após provavelmente alguma indicação e algum contato prévio com a clínica à distância, o representante de um paciente chega a uma unidade com dois possíveis objetivos não excludentes:

1. Ter o paciente avaliado por um ou mais especialistas (avaliadores);
2. Iniciar um tratamento para o paciente por meio do estabelecimento de um contrato com a clínica.

Uma vez que o representante esteja certo de pelo menos um dos objetivos acima, uma recepcionista irá realizar o cadastro do paciente no sistema (caso ele já não esteja cadastrado, claro) a partir dos dados que forem fornecidos. Dentre esses dados podem estar documentos médicos prévios, que deverão ser anexados ao sistema, mas cuja permanência irá depender se o representante irá mesmo querer, ao final desse processo inicial, firmar um contrato com a clínica.

### 2. Agendamento de avaliação

Feito o cadastro do paciente, a recepcionista irá agendar uma ou mais avaliações com um ou mais avaliadores. Após o agendamento, estando próxima a hora marcada para uma sessão, o avaliador associado, que deve ter conhecimento dos agendamentos vinculados a ele, poderá ou não confirmar sua disponibilidade via sistema, ação essa que indicará que tal avaliação já pode ser iniciada.

Existem dois tipos de avaliação: diagnóstica e terapêutica.

As avaliações diagnósticas, como o próprio nome indica, têm por objetivo gerar diagnósticos acerca do paciente, que poderão ser utilizados internamente e/ou externamente (i.e., poderão ser utilizados por outros funcionários da clínica ou por profissionais de fora). Esse tipo de avaliação pode ser realizado independentemente à atividade principal da clínica (i.e., a realização de terapias com crianças), podendo funcionar como uma consulta de uma clínica convencional caso o representante queira apenas obter um ou mais diagnósticos relacionados ao paciente.

Por outro lado, uma avaliação terapêutica é realizada por um avaliador especial (o "avaliador terapêutico") que determinará, baseado em todos os dados internos e externos obtidos acerca do paciente (i.e., os dados que foram produzidos dentro ou fora da clínica), quais as terapias recomendadas para ele, processo esse chamado de "indicação terapêutica". Tal processo pode ser realizado pelo especialista fora do contexto de uma sessão avaliativa e é ABSOLUTAMENTE necessário, juntamente com a avaliação em si realizada por ele, para o início de um tratamento na clínica. A indicação só é desnecessária em casos onde o representante não deseje celebrar um contrato, mas ainda assim o paciente poderá passar por uma sessão com o avaliador terapêutico, visto que este é, fundamentalmente, um avaliador como qualquer outro, capaz de gerar diagnósticos e sugerir encaminhamentos (apesar de que sua função principal seja, justamente, reunir os dados dos demais avaliadores e sugerir as terapias para o paciente).

Caso haja necessidade, é perfeitamente possível que um paciente realize mais de uma sessão avaliativa com um mesmo avaliador, como é o caso de uma avaliação com a neuropedagoga. Não existe uma ordem pré-definida para as avaliações, mas uma avaliação terapêutica sempre será a última em um cenário onde o paciente irá iniciar um tratamento em função da já citada necessidade do processo de indicação.

### 3. Avaliação

Durante uma sessão avaliativa, o avaliador poderá escrever observações acerca do paciente, que ficarão permanentemente associadas a ele.

Ao final de cada sessão, o avaliador deve encerrá-la no sistema, o que tornará as observações feitas até então indisponíveis para edição. No caso de uma avaliação terapêutica onde ocorreu uma indicação, o sistema deve ser capaz de informar a recepção de que tal processo já foi realizado.

### 4. Pagamento

Encerrada uma avaliação, o representante irá realizar o pagamento na recepção. Em alguns casos, o pagamento de um "pacote de sessões" pode ser feito de antemão, mas o comum é que cada avaliação seja paga individualmente.

### 5a. Contratação

Tendo sido feita a indicação terapêutica do paciente às terapias recomendadas, o representante que desejar contratar os serviços terapêuticos da clínica irá até a recepção, onde as recepcionistas, já informadas da finalização do processo, irão imprimir os documentos de contrato e auxiliá-lo na assinatura dos mesmos.

### 5b. Não-contratação

Finalizadas e pagas todas as consultas agendadas, caso o representante não queira contratar os serviços terapêuticos da clínica, todo o fluxo será encerrado. Nesse cenário, conforme já sugerido anteriormente, os dados relacionados ao paciente continuarão a ser mantidos no sistema apenas por um tempo delimitado.

## Entidades

- Paciente
- Recepcionista
- Responsável
- Avaliação
  - Avaliação diagnóstica
  - Avaliação terapêutica
- Avaliador
  - Avaliador diagnóstico
  - Avaliador terapêutico
- Observação
- Contrato
- Terapia
- Terapeuta

## 1. Cadastro de paciente

1. *Paciente* chega à clínica;
2. *Recepcionista* **cadastra** o paciente;
    - O responsável pode ou não fornecer documentos relevantes acerca do paciente, como algum diagnóstico médico;
    - Os documentos fornecidos devem ser anexados ao cadastro do paciente dentro do sistema;
    - Caso o responsável posteriormente decida não celebrar um contrato, os dados do paciente (incluindo os documentos) devem ser eliminados do sistema (não necessariamente de imediato);

## 2. Agendamento de avaliação

3. *Recepcionista* **agenda *avaliações*** do *paciente* com *avaliadores* do "corredor";
    - Pode ser apenas uma avaliação com um único avaliador;
    - É possível agendar mais de uma avaliação com um mesmo avaliador;
    - Todos os agendamentos com um avaliador devem aparecer para ele no sistema;

## 3. Realização de avaliação

4. *Avaliador* **confirma disponibilidade** para atender *paciente*;
    - O paciente não necessariamente precisa estar presente na avaliação, podendo estar presente apenas um responsável;
5. *Paciente* vai até a sala do *avaliador*;
6. Durante a *avaliação*, o *avaliador* pode **escrever *observações*** a respeito do paciente;
    - O sistema deve permitir que as observações escritas sejam salvas e editáveis durante a realização da avaliação;
    - Observações feitas em uma avaliação já finalizada não podem ser editadas;
7. No final, o *avaliador* deve **finalizar a *avaliação***;
    - Essa ação deve atualizar o status da avaliação;

## 4. Celebração de contrato

8. *Avaliador diagnóstico* **libera contratação** para o tratamento do *paciente*;
    - O contrato só pode ser celebrado se o avaliador diagnóstico liberar;
    - Tudo que um avaliador comum pode realizar no sistema o avaliador diagnóstico também deve poder;
9. *Recepcionista* **celebra o contrato** entre a clínica e o *responsável* pelo *paciente*;
    - O sistema deve gerar os documentos do contrato e permitir a impressão dos mesmos;

## 5. Agendamento de terapias

10. *Recepcionista* **agenda as *terapias*** do *paciente* com *terapeutas*;
    - O agendamento das terapias é semelhante à criação de uma matriz curricular de uma instituição de ensino;