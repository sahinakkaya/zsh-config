export let eggs = #{
    "zsh": #{
        targets: "~/.config/zsh/",
        strategy: "put",
        main_file: "zshrc",
        templates: ["runcoms/*", "fzf.zsh"]
    },
}
