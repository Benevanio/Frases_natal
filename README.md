# App de Frases de Natal

Este é um simples aplicativo Flutter que gera frases aleatórias de Natal e permite que o usuário copie a frase para a área de transferência.

## Funcionalidades

- Exibe uma lista de frases de Natal inspiradoras.
- Permite ao usuário gerar uma **frase aleatória** de Natal a qualquer momento.
- Permite ao usuário **copiar a frase** para a área de transferência com o toque de um botão.
- Exibe imagens natalinas, como o **Papai Noel** e as **Renas** para deixar o app mais festivo.

## Tecnologias Utilizadas

- **Flutter**: Framework para construção do aplicativo.
- **Dart**: Linguagem de programação usada para desenvolver o app.
- **Services (Clipboard)**: Usado para copiar as frases para a área de transferência.

## Pré-requisitos

Antes de começar, você precisa ter o seguinte instalado no seu ambiente de desenvolvimento:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) (ou outro IDE de sua preferência, como VS Code)
- [Emulador Android ou dispositivo físico] para rodar o app.

## Como Rodar o App

### Passo 1: Clonar o Repositório

Clone o repositório para a sua máquina local:

```bash
git clone https://github.com/seu-usuario/natal-app.git
```

### Passo 2: Instalar as Dependências

Navegue até o diretório do projeto e execute o comando para instalar as dependências:

```bash
cd natal-app
flutter pub get
```

### Passo 3: Executar o App

Depois de instalar as dependências, execute o seguinte comando para rodar o app:

```bash
flutter run
```

O app será iniciado no emulador ou dispositivo conectado.

## Como Funciona

### Gerar Frase Aleatória

- Ao abrir o app, uma frase de Natal aleatória será gerada. 
- O usuário pode clicar no botão **"Frase Aleatória"** para gerar novas frases.

### Copiar Frase

- Depois de gerar uma frase, o usuário pode copiá-la para a área de transferência clicando no botão **"Copiar Frase"**.
- Após a frase ser copiada, um **SnackBar** será exibido para informar ao usuário que a frase foi copiada com sucesso.

### Layout

- O app tem um layout simples, com uma tela inicial que exibe:
  - Uma imagem de Natal.
  - Uma frase aleatória.
  - Botões para gerar uma nova frase e copiar a frase atual.
  - Imagens de renas e o Papai Noel para deixar o design mais natalino.

## Capturas de Tela

(Adicione capturas de tela do seu aplicativo aqui)

![App Screenshot](screenshot.png)

## Contribuições

Se você deseja contribuir para o projeto, fique à vontade para fazer um **fork** deste repositório e enviar **pull requests**. Agradecemos a sua contribuição!

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
```

### Detalhes importantes do `README`:

1. **Descrição do App**: Explica as funcionalidades principais do app, como gerar frases aleatórias e copiar a frase.
   
2. **Tecnologias Utilizadas**: Especifica que o app foi desenvolvido com Flutter e Dart.

3. **Instalação e Execução**: Passos para instalar e executar o app, incluindo o comando para instalar dependências (`flutter pub get`) e executar o app (`flutter run`).

