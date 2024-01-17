# JUSTIFY.VIM

Vim plugin to justify-align text.

- [Example](#example)
- [Usage](#usage)
- [Config](#config)
- [About](#about)

## EXAMPLE

The following text:

```text
Minima est voluptas dicta consequatur quia aut. Iusto necessitatibus ut et et
aut labore cupiditate fugiat. Itaque omnis pariatur debitis odit placeat
dolores. Nam molestiae nemo non placeat rem consectetur iste eveniet.

        Cumque laborum sunt ipsa asperiores est repellendus quis voluptas. At
        incidunt consequuntur ullam. Est exercitationem quidem non et distinctio
        eum ipsam aut.

    // Et architecto est fuga et et deserunt. Et blanditiis ut rerum qui aut
    // inventore. Et molestiae omnis quia dolorum eos.
    //
    //     * Corrupti at ipsam debitis et quod ut nobis fuga. Tenetur dolores
    //     omnis id. Sint quod aut sit. Saepe cupiditate modi enim omnis qui
    //     sint. Quis repellendus libero et.
    //     * Quidem blanditiis recusandae est inventore. Ut assumenda veritatis atque minima
    //     commodi necessitatibus et.
    //     * Voluptatum odio aut ut aut qui voluptatem porro sed.
    //     * Molestias officiis molestiae voluptas asperiores quam non temporibus. Possimus
    //     at voluptatibus et architecto deserunt.
    //
    // Iure in et ipsam minus recusandae odio. Quo dolore repellendus nam et

15. Dolor sed magni odio fugiat nisi sit temporibus officia. Fugiat sunt non ex doloremque voluptas quos facere ipsa. Consequatur assumenda deleniti culpa inventore vel dolores. Consectetur esse voluptatum omnis recusandae non. Et illum provident non veritatis assumenda numquam dolor ipsa. Adipisci voluptatibus nesciunt rerum et vel quaerat.
16. Assumenda tenetur quo et voluptates voluptatem blanditiis at illum. Tenetur quia incidunt voluptatem et in magni quis repudiandae. Maiores aut ut quo sequi error corrupti in vero.
```

Becomes:

```text
Minima est voluptas dicta consequatur quia aut. Iusto necessitatibus  ut  et  et
aut labore  cupiditate  fugiat.  Itaque  omnis  pariatur  debitis  odit  placeat
dolores. Nam molestiae nemo non placeat rem consectetur iste eveniet.

        Cumque laborum sunt ipsa asperiores est repellendus  quis  voluptas.  At
        incidunt consequuntur ullam. Est exercitationem quidem non et distinctio
        eum ipsam aut.

    // Et architecto est fuga et et deserunt. Et blanditiis  ut  rerum  qui  aut
    // inventore. Et molestiae omnis quia dolorum eos.
    //
    //     * Corrupti at ipsam debitis et quod ut nobis  fuga.  Tenetur  dolores
    //       omnis id. Sint quod aut sit. Saepe cupiditate modi enim  omnis  qui
    //       sint. Quis repellendus libero et.
    //     * Quidem blanditiis recusandae est inventore. Ut assumenda  veritatis
    //       atque minima commodi necessitatibus et.
    //     * Voluptatum odio aut ut aut qui voluptatem porro sed.
    //     * Molestias  officiis  molestiae   voluptas   asperiores   quam   non
    //       temporibus. Possimus at voluptatibus et architecto deserunt.
    //
    // Iure in et ipsam minus recusandae odio. Quo dolore repellendus nam et

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

You can add keymaps to make it easier:

```
vmap <M-j> :Justify<CR><CR>
```

## CONFIG

This plugin is a wrapper for the Python script `justify.py`.  It  downloads  the
script from GitHub, save it locally, and pass the  text  and  arguments  to  the
script, which actually does the job of justifying text.

### `g:justify_path`

Where to save the Python  script  if  downloading  it  is  needed.  Defaults  to
`~/.local/share/vim_justify/justify.py`

### `g:justify_cmd`

The  command  to  run  when  justifying  text.  Defaults   to   the   value   of
`g:justify_path`. If overwritten by the user, the script won't be downloaded.

### `g:justify_linewidth`

The line width used by the `Justify` command when it is  not  specified  by  the
arguments. Defauls to `80`.

### `g:justify_mappings`

If set to `1`, it will add keymaps. Defaults to `0`. The keymaps are:

- `nmap <M-j> vip:Justify<CR><CR>`
- `vmap <M-j> :Justify<CR><CR>`

## ABOUT

See [justify.py](https://github.com/uwla/justify.py).
