
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.
module.exports = {
  config: {
    updateChannel: 'canary',
    shell: '/bin/zsh',
    bell: 'SOUND',
    macOptionSelectionMode: 'vertical',
    webGLRenderer: true,
    windowSize: [720, 520],
    fontSize: 10,
    fontFamily: 'Fira Code, Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    lineHeight: 1,
    letterSpacing: 0,
  },
  localPlugins: ["dracula-pro"],
};
