# App Mercado Livre (Flutter)

Este repositório é o desafio final do módulo 5 (Gerenciamento de Estado) da Growdev, contém um aplicativo Flutter que simula algumas funcionalidades de um e-commerce, inspirado no Mercado Livre. O projeto demonstra o uso de Flutter para desenvolvimento mobile, gerenciamento de estado com MobX e injeção de dependência com GetIt.

<img width="294" height="639" alt="pagina-1" src="https://github.com/user-attachments/assets/3b95b54a-5823-4fa4-8099-186b8f02437b" />
<img width="294" height="639" alt="pagina-3" src="https://github.com/user-attachments/assets/b5718c8b-c0e9-42dc-899a-1784d8e4b83d" />
<img width="294" height="639" alt="pagina-4" src="https://github.com/user-attachments/assets/f095ec72-2297-4755-bc24-a6b1750f8594" />
<img width="294" height="639" alt="pagina-6" src="https://github.com/user-attachments/assets/ec1263b5-b192-40d1-aa7f-dd4720421425" />


## Funcionalidades

- **Listagem de Produtos:** Exibição de uma lista de produtos com detalhes como nome, imagem, valor e parcelamento.
- **Carrinho de Compras:** Adição e remoção de produtos do carrinho, com contagem de itens.
- **Avaliação de Produtos:** Funcionalidade para avaliar produtos (estrelas).
- **Barra de Busca:** Componente de busca para simular a pesquisa de produtos.
- **Filtro de Produtos:** Componente de filtro (não implementado funcionalmente neste exemplo, mas presente na UI).
- **Widget de CEP:** Um widget para simular a exibição de informações de CEP.

## Tecnologias Utilizadas

O projeto foi desenvolvido utilizando as seguintes tecnologias e bibliotecas:

- **Flutter:** Framework de UI para construir aplicativos compilados nativamente para mobile, web e desktop a partir de um único código-fonte.
- **Dart:** Linguagem de programação utilizada pelo Flutter.
- **MobX:** Biblioteca de gerenciamento de estado reativo para Dart e Flutter, facilitando a criação de estados observáveis e reações a mudanças.
- **flutter_mobx:** Integração do MobX com Flutter.
- **mobx_codegen:** Gerador de código para MobX.
- **build_runner:** Ferramenta para gerar arquivos de código no Dart.
- **GetIt:** Simple Service Locator para Dart e Flutter, utilizado para injeção de dependência.
- **flutter_rating_bar:** Widget de barra de avaliação (estrelas) para Flutter.

## Estrutura do Projeto

A estrutura do projeto segue as convenções do Flutter, com as seguintes pastas principais:

```
. 
├── android/             # Arquivos específicos da plataforma Android
├── assets/              # Ativos do aplicativo (imagens, fontes, etc.)
│   └── images/
├── lib/                 # Código-fonte principal do aplicativo
│   ├── main.dart        # Ponto de entrada do aplicativo
│   ├── my_app.dart      # Configuração da aplicação Flutter
│   ├── models/          # Definições de modelos de dados (ex: Product)
│   ├── screens/         # Telas/páginas do aplicativo (ex: HomeScreen, ShoppingCartScreen)
│   ├── store/           # Lógica de gerenciamento de estado com MobX (ex: HomeStore, ShoppingCartStore)
│   └── widgets/         # Componentes de UI reutilizáveis (ex: MlCard, MlSearchBar)
├── pubspec.yaml         # Definições de dependências e metadados do projeto
├── pubspec.lock         # Bloqueio de dependências
└── test/                # Testes unitários e de widget
```

## Como Rodar o Projeto

Para configurar e executar este projeto em sua máquina local, siga os passos abaixo:

### Pré-requisitos

Certifique-se de ter o Flutter SDK instalado e configurado em sua máquina. Você pode seguir as instruções de instalação no [site oficial do Flutter](https://flutter.dev/docs/get-started/install).

### Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/geovannifranca/app_mercado_livre.git
   cd app_mercado_livre
   ```

2. Instale as dependências do Flutter:

   ```bash
   flutter pub get
   ```

3. Gere os arquivos `*.g.dart` para MobX:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

### Execução

1. Conecte um dispositivo Android ou iOS, ou inicie um emulador.
2. Execute o aplicativo:

   ```bash
   flutter run
   ```

## Gerenciamento de Estado

Este projeto utiliza **MobX** para gerenciamento de estado reativo. Os `stores` (`HomeStore` e `ShoppingCartStore`) contêm a lógica de negócios e o estado observável da aplicação. O **GetIt** é usado como um Service Locator para fornecer instâncias desses `stores` para os widgets que precisam acessá-los.


## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## Autor

- Geovanni França

