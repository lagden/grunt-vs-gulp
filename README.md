# Gulp versus Grunt

> Apenas uma lutinha entre os task runners


## Instalação

```
npm i
```

## Teste

```
npm start
```

## Resultados

Foi muito parecido!
Veja os dados abaixo:

### Gulp

Utilizando o `gulp-load-plugins`

```
[15:29:59] Using gulpfile ~/webapps/htdocs/xxx/gxg/gulpfile.js
[15:29:59] Starting 'default'...
[15:29:59] Finished 'default' after 228 ms
```

Carregando na mão

```
[15:30:53] Using gulpfile ~/webapps/htdocs/xxx/gxg/gulpfile.js
[15:30:53] Starting 'default'...
[15:30:53] Finished 'default' after 54 ms
```

### Grunt

Utilizando o `jit-grunt`

```
Running "sass:vs" (sass) task
Running "postcss:vs" (postcss) task
>> 1 processed stylesheet created.

Done, without errors.


Execution Time (2015-08-31 18:35:32 UTC)
loading tasks          129ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 39%
loading grunt-sass      13ms  ▇▇▇▇▇▇ 4%
sass:vs                 14ms  ▇▇▇▇▇▇ 4%
loading grunt-postcss   66ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 20%
postcss:vs             105ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 32%
Total 328ms
```

Carregando na mão

```
Running "sass:vs" (sass) task
Running "postcss:vs" (postcss) task
>> 1 processed stylesheet created.

Done, without errors.


Execution Time (2015-08-31 18:45:09 UTC)
loading tasks  145ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 69%
sass:vs         10ms  ▇▇▇▇▇▇▇ 5%
postcss:vs      53ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 25%
Total 209ms
```

## Conclusão

Os dados acima mostra que carregando os plugins na mão a performance é melhor nos 2 casos.

### Gulp

Carregar os plugins na mão é `77%` mais rápido.

### Grunt

Carregar os plugins na mão é `37%` mais rápido.

### Grunt vs Gulp

Não achei um medidor adequado para o tira.

Então fiz os testes com o `gulp-duration` e `time-grunt`, sem eles a execução da `task` é muito rápida!
O problema é que o **Grunt** não retorna nenhum tipo de dado sem o `time-grunt`.

Se comparar os dados do `gulp-duration` e `time-grunt`, ou seja, sem o `loading tasks` fica assim:

**Grunt**

```
sass:vs         10ms
postcss:vs      53ms
```

`63 ms`

**Gulp**

```
[16:20:34] Using gulpfile ~/webapps/htdocs/xxx/gxg/gulpfile.js
[16:20:34] Starting 'default'...
[gulp] sass + postcss: 63 ms
```

`63 ms`

**Empatou!!**


## License

MIT © [Thiago Lagden](http://lagden.in)
