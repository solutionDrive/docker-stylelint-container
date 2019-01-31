# Docker container providing stylelint

A drone "plugin" that will execute stylelint in the specified `path`

Note: `path` is a required argument - for path patterns please see stylelint documentation

## Example .drone.yml

```
pipeline:
  check_style:
    image: solutiondrive/stylelint
    pull: true
    path: "out/**/*.css"
```

## Extra variables

Additional parameters are available for the plugin that allows overriding the default

`cli` allows overriding the command execute (default: --config ${PLUGIN_TEMPLATE} ${PLUGIN_PATH} ). Exclusive option regards to `ignore` and `template`

`ignore` allows to set the parameters for paths to ignore 

`template`  allows to specify the template to be used (see rootfs/templates - or provide your own via the repository) 

`base_workdir` allows for overriding the workdir in which the command is executed (default is the workspace used in drone)

`quiet` if set to `true` stylelint will only show errors
