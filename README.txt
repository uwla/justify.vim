# justipy.vim

Vim plugin to justify-align text.

## TOC

- EXAMPLE
- USAGE
- CONFIG
- ABOUT

## EXAMPLE

The following text:

```
Minima est voluptas dicta consequatur quia aut. Iusto necessitatibus ut et et
aut labore cupiditate fugiat. Itaque omnis pariatur debitis odit placeat
dolores. Nam molestiae nemo non placeat rem consectetur iste eveniet.

        Cumque laborum sunt ipsa asperiores est repellendus quis voluptas. At
        incidunt consequuntur ullam. Est exercitationem quidem non et distinctio
        eum ipsam aut.

Velit dignissimos eum ut provident cumque natus. Ut sed reiciendis quis maxime
dicta. Culpa repellendus incidunt et ut.

1. Occaecati quo quo aut ut.
2. Atque vel ducimus modi in consequatur.
3. Numquam et ut ipsam.
4. Eos molestiae tenetur ex assumenda et reiciendis.

Esse fuga debitis aperiam dolorum vero quia sed rerum.

    // Et architecto est fuga et et deserunt. Et blanditiis ut rerum qui aut
    // quisquam praesentium. Assumenda esse cum id temporibus corporis nihil
    // inventore. Et molestiae omnis quia dolorum eos.
    //
    //     * Corrupti at ipsam debitis et quod ut nobis fuga. Tenetur dolores
    //     omnis id.Sint quod aut sit.
    //     * Quidem blanditiis recusandae est inventore. Ut assumenda veritatis atque minima
    //     commodi necessitatibus et.
    //     * Voluptatum odio aut ut aut qui voluptatem porro sed.
    //     * Molestias officiis molestiae voluptas asperiores quam non temporibus. Possimus
    //     at voluptatibus et architecto deserunt.
    //
    // Iure in et ipsam minus recusandae odio. Quo dolore repellendus nam et
    // quae. Dolore occaecati vero incidunt

\begin{itemize}
    \item Quidem quos sunt voluptates sed est. Voluptates magni voluptate minus
    error dolores eum atque. Aut adipisci modi et accusamus.
    \item Sit aut sit omnis rem quia sed maiores similique. Sed voluptas omnis
    ullam laboriosam cumque eveniet. Voluptate eum nesciunt eum alias quis
    velit.
    \begin{enumerate}
        \item Eum fuga id voluptas ullam et libero. Recusandae reiciendis et
        sequi. Possimus molestiae officiis nobis voluptas ut dignissimos vero.
        Reiciendis quia fuga earum nulla nesciunt quo pariatur. Quasi
        repellendus iure quam quibusdam. Eum quo animi vero aut asperiores
        fuga.
        \item Neque natus quam consequatur et laboriosam dolorum. Sequi
        repellat minus dolorem nisi et atque. Cum quis similique voluptas
        facere suscipit itaque.
    \end{enumerate}
    \item Beatae quae accusamus vero ut et architecto molestiae. Voluptas
    tempora saepe dolor ad voluptate doloremque. Odit voluptatem veniam
    officiis quis. Minima et quo accusantium reiciendis quo doloremque est qui.
    Nulla qui aliquid omnis incidunt.
\end{itemize}

Eaque delectus harum et cupiditate aut dolorum aut aut.

15. Dolor sed magni odio fugiat nisi sit temporibus officia. Fugiat sunt non ex
doloremque voluptas quos facere ipsa. Consequatur assumenda deleniti culpa
inventore vel dolores. Consectetur esse voluptatum omnis recusandae non. Et
illum provident non veritatis assumenda numquam dolor ipsa. Adipisci
voluptatibus nesciunt rerum et vel quaerat.
16. Assumenda tenetur quo et voluptates voluptatem blanditiis at illum. Tenetur
quia incidunt voluptatem et in magni quis repudiandae. Maiores aut ut quo
sequi error corrupti in vero.
```

Becomes:

```
Minima est voluptas dicta consequatur quia aut. Iusto necessitatibus  ut  et  et
aut labore  cupiditate  fugiat.  Itaque  omnis  pariatur  debitis  odit  placeat
dolores. Nam molestiae nemo non placeat rem consectetur iste eveniet.

        Cumque laborum sunt ipsa asperiores est repellendus  quis  voluptas.  At
        incidunt consequuntur ullam. Est exercitationem quidem non et distinctio
        eum ipsam aut.

Velit dignissimos eum ut provident cumque natus. Ut sed reiciendis  quis  maxime
dicta. Culpa repellendus incidunt et ut.

1. Occaecati quo quo aut ut.
2. Atque vel ducimus modi in consequatur.
3. Numquam et ut ipsam.
4. Eos molestiae tenetur ex assumenda et reiciendis.

Esse fuga debitis aperiam dolorum vero quia sed rerum.

    // Et architecto est fuga et et deserunt. Et blanditiis  ut  rerum  qui  aut
    // quisquam praesentium. Assumenda esse cum  id  temporibus  corporis  nihil
    // inventore. Et molestiae omnis quia dolorum eos.
    //
    //     * Corrupti at ipsam debitis et quod ut nobis  fuga.  Tenetur  dolores
    //       omnis id.Sint quod aut sit.
    //     * Quidem blanditiis recusandae est inventore. Ut assumenda  veritatis
    //       atque minima commodi necessitatibus et.
    //     * Voluptatum odio aut ut aut qui voluptatem porro sed.
    //     * Molestias  officiis  molestiae   voluptas   asperiores   quam   non
    //       temporibus. Possimus at voluptatibus et architecto deserunt.
    //
    // Iure in et ipsam minus recusandae odio. Quo  dolore  repellendus  nam  et
    // quae. Dolore occaecati vero incidunt

\begin{itemize}
    \item Quidem quos sunt voluptates sed est. Voluptates magni voluptate  minus
          error dolores eum atque. Aut adipisci modi et accusamus.
    \item Sit aut sit omnis rem quia sed maiores similique. Sed  voluptas  omnis
          ullam laboriosam cumque eveniet. Voluptate eum nesciunt eum alias quis
          velit.
    \begin{enumerate}
        \item Eum fuga id voluptas ullam et  libero.  Recusandae  reiciendis  et
              sequi. Possimus molestiae officiis nobis voluptas  ut  dignissimos
              vero. Reiciendis quia fuga  earum  nulla  nesciunt  quo  pariatur.
              Quasi repellendus iure quam quibusdam.  Eum  quo  animi  vero  aut
              asperiores fuga.
        \item Neque natus quam consequatur et laboriosam dolorum. Sequi repellat
              minus dolorem nisi et atque. Cum quis  similique  voluptas  facere
              suscipit itaque.
    \end{enumerate}
    \item Beatae quae  accusamus  vero  ut  et  architecto  molestiae.  Voluptas
          tempora saepe dolor ad voluptate doloremque.  Odit  voluptatem  veniam
          officiis quis. Minima et quo accusantium reiciendis quo doloremque est
          qui. Nulla qui aliquid omnis incidunt.
\end{itemize}

Eaque delectus harum et cupiditate aut dolorum aut aut.

15. Dolor sed magni odio fugiat nisi sit temporibus officia. Fugiat sunt non  ex
    doloremque voluptas quos facere ipsa. Consequatur assumenda  deleniti  culpa
    inventore vel dolores. Consectetur esse voluptatum omnis recusandae non.  Et
    illum  provident  non  veritatis  assumenda  numquam  dolor  ipsa.  Adipisci
    voluptatibus nesciunt rerum et vel quaerat.
16. Assumenda tenetur quo et voluptates voluptatem blanditiis at illum.  Tenetur
    quia incidunt voluptatem et in magni quis repudiandae. Maiores  aut  ut  quo
    sequi error corrupti in vero.
```

## USAGE

To justify lines, Select them using Visual mode, type the command `:Justify` and
press Enter.

To specify line width, append the desired value after the command: `Justify 72`,
which will justify the text using 72 line width limit (Git's default).

You can add keymaps to make it easir:

```
vmap <M-j> :Justify<CR><CR>
```

## CONFIG

This plugin is a wrapper to `justipy`, a Python script used to justify text.  It
downloads the script from Github,  save  it  locally,  and  pass  the  text  and
arguments to the script, which actually does the job of justifying text.

`g:justipy_path`: where to save the Python script if downloading it  is  needed.
Defaults to `~/.local/share/vim_justipy/justify.py`

`g:justipy_cmd`: the command to run when justifying text. Defaults to the  value
of `g:justipy_path`. If overwritten by the user, the script won't be downloaded.

`g:justipy_linewidth`: the line width used by the `Justify` command when  it  is
not specified by the arguments. Defauls to `80`.

`g:justipy_mappings`: if set to `1`, the plugin will set the following  keymaps:
`nmap <M-j> vip:Justify<CR><CR>`, `vmap <M-j> :Justify<CR><CR>`. Defaults to 0.

## ABOUT

This plugin is a wrapper for Justipy:

https://github.com/uwla/justipy
