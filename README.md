# Place.io

Projeto desenvolvido para a conclusão do curso de Swift, HackaTruck.

## Descrição

Place.io é um aplicativo iOS desenvolvido em SwiftUI que permite aos usuários descobrir e interagir com locais de interesse. Inspirado em interfaces de swipe como o Enjoy, o app oferece uma experiência intuitiva para explorar restaurantes, pontos turísticos e outros estabelecimentos.

## Funcionalidades

- **Interface de Swipe**: Deslize para a direita para "curtir" um local ou para a esquerda para "não curtir".
- **Lista de Locais**: Visualize uma lista completa de locais disponíveis.
- **Informações Detalhadas**: Veja detalhes completos de um local, incluindo endereço, horário de funcionamento, telefone e avaliações.
- **Sistema de Comentários**: Leia e adicione comentários e avaliações para os locais.
- **Integração com Servidor**: Dados são buscados de um servidor Node-RED local.

## Tecnologias Utilizadas

- **SwiftUI**: Framework para construção da interface do usuário.
- **Swift**: Linguagem de programação principal.
- **URLSession**: Para requisições HTTP e busca de dados.
- **JSONDecoder**: Para decodificação de dados JSON.
- **MVVM**: Padrão de arquitetura utilizado (Model-View-ViewModel).

## Pré-requisitos

- **Xcode**: Versão 15.0 ou superior.
- **iOS**: Versão 17.0 ou superior.
- **Node-RED**: Servidor local rodando na porta 1880 para fornecer dados (http://127.0.0.1:1880/read).

## Instalação

1. Clone o repositório:
   ```
   git clone https://github.com/seu-usuario/place.io.git
   ```

2. Abra o projeto no Xcode:
   ```
   open Place.io.xcodeproj
   ```

3. Certifique-se de que o servidor Node-RED esteja rodando localmente na porta 1880.

4. Execute o projeto no simulador ou dispositivo iOS.

## Uso

1. Abra o aplicativo.
2. Na aba "Enjoy", deslize os cards para interagir com os locais.
3. Use a aba "List" para ver todos os locais em uma lista.
4. Na aba "Info", veja detalhes de um local específico.
5. Na aba "Comments", leia e adicione comentários.

## Estrutura do Projeto

```
Place.io/
├── Place.io/
│   ├── Place_ioApp.swift          # Ponto de entrada da aplicação
│   ├── ContentView.swift          # View principal com navegação por abas
│   ├── EnjoyView.swift            # Interface de swipe para descobrir locais
│   ├── ListView.swift             # Lista de locais (placeholder)
│   ├── InfoView.swift             # Detalhes de um local
│   ├── CommentsView.swift         # Sistema de comentários (placeholder)
│   ├── Model.swift                # Modelos de dados (Local, dia, comenta)
│   ├── ViewModel.swift            # ViewModel para gerenciamento de dados
│   └── Assets.xcassets/           # Recursos visuais (cores, ícones)
├── Place.io.xcodeproj/            # Arquivos do projeto Xcode
└── README.md                      # Este arquivo
```

## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para detalhes.
