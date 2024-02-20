local M = {}

function M.highlight(palette, opts)
  return {
    Normal = {
      fg = palette.fg,
      bg = opts.transparent and palette.none or palette.bg,
    },
    SignColumn = { bg = opts.transparent and palette.none or palette.bg },
    MsgArea = {
      fg = palette.fg,
      bg = opts.transparent and palette.none or palette.bg,
    },
    ModeMsg = { fg = palette.fg, bg = palette.bg },
    MsgSeparator = { fg = palette.fg, bg = palette.bg },
    SpellBad = { sp = palette.error, undercurl = true },
    SpellCap = { sp = palette.yellow, undercurl = true },
    SpellLocal = { sp = palette.sign_add, undercurl = true },
    SpellRare = { sp = palette.purple, undercurl = true },
    NormalNC = {
      fg = palette.fg,
      bg = opts.transparent and palette.none or palette.bg,
    },
    Pmenu = { fg = palette.light_gray, bg = palette.accent },
    PmenuSel = { fg = palette.blue, bg = palette.alt_bg },
    WildMenu = { fg = palette.blue, bg = palette.alt_bg },
    CursorLineNr = {
      fg = palette.light_gray,
      bold = true,
    },
    Comment = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    Folded = { fg = palette.light_gray, bg = palette.alt_bg },
    FoldColumn = { fg = palette.light_gray, bg = palette.alt_bg },
    LineNr = { fg = palette.gray },
    Whitespace = { fg = palette.gray },
    VertSplit = { fg = palette.bg, bg = palette.accent },
    CursorLine = {
      bg = palette.alt_bg,
    },
    CursorColumn = { bg = palette.alt_bg },
    ColorColumn = { bg = palette.alt_bg },
    NormalFloat = {
      bg = opts.transparent and palette.none or palette.alt_bg,
    },
    Visual = { bg = palette.gray },
    VisualNOS = { bg = palette.alt_bg },
    WarningMsg = { fg = palette.error, bg = palette.bg },
    DiffAdd = { bg = palette.accent_green },
    DiffText = { bg = palette.accent_blue },
    DiffChange = {
      fg = palette.sign_change,
      bg = palette.accent_blue,
    },
    DiffDelete = { fg = palette.sign_delete, bg = palette.accent_red },
    QuickFixLine = { bg = palette.accent },
    PmenuSbar = { bg = palette.alt_bg },
    PmenuThumb = { bg = palette.light_gray },
    MatchWord = { underline = true },
    MatchParen = { fg = palette.blue, bg = palette.bg, underline = true },
    MatchWordCur = { underline = true },
    MatchParenCur = { underline = true },
    Cursor = { fg = palette.cursor_fg, bg = palette.cursor_bg },
    lCursor = { fg = palette.cursor_fg, bg = palette.cursor_bg },
    CursorIM = { fg = palette.cursor_fg, bg = palette.cursor_bg },
    TermCursor = {
      fg = palette.cursor_fg,
      bg = palette.cursor_bg,
      reverse = false,
    },
    TermCursorNC = {
      fg = palette.alt_bg,
      reverse = false,
    },
    Conceal = { fg = palette.fg },
    Directory = { fg = palette.blue },
    SpecialKey = { fg = palette.blue },
    Title = { fg = palette.blue },
    ErrorMsg = { fg = palette.error, bg = palette.bg, bold = true },
    Search = { fg = palette.orange, bg = palette.alt_bg },
    IncSearch = { fg = palette.alt_bg, bg = palette.orange },
    Substitute = { fg = palette.alt_bg, bg = palette.orange },
    MoreMsg = { fg = palette.cyan },
    Question = { fg = palette.cyan },
    EndOfBuffer = { fg = palette.gray },
    NonText = { fg = palette.fg },
    Variable = vim.tbl_extend("force", { fg = palette.white }, opts.styles.variables),
    String = { fg = palette.medium_gray_blue },
    Character = { fg = palette.green },
    Constant = { fg = palette.white },
    Number = { fg = palette.red },
    Boolean = { fg = palette.red },
    Float = { fg = palette.red },
    Identifier = { fg = palette.white },
    Function = vim.tbl_extend("force", { fg = palette.cyan }, opts.styles.functions),
    Operator = { fg = palette.white },
    Type = vim.tbl_extend("force", { fg = palette.white }, opts.styles.type),
    StorageClass = { fg = palette.gray_blue },
    Structure = { fg = palette.gray_blue },
    Typedef = { fg = palette.white },
    Keyword = vim.tbl_extend("force", { fg = palette.gray_blue }, opts.styles.keywords),
    Statement = { fg = palette.gray_blue },
    Conditional = { fg = palette.gray_blue },
    Repeat = { fg = palette.gray_blue },
    Label = { fg = palette.white },
    Exception = { fg = palette.red },
    Include = { fg = palette.red },
    PreProc = { fg = palette.white },
    Define = { fg = palette.red },
    Macro = { fg = palette.cyan },
    PreCondit = { fg = palette.medium_gray },
    Special = { fg = palette.white },
    SpecialChar = { fg = palette.medium_gray_blue },
    Tag = { fg = palette.blue },
    Debug = { fg = palette.red },
    Delimiter = { fg = palette.white },
    SpecialComment = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = palette.cyan, bg = palette.bg, bold = true },
    Todo = { fg = palette.red, bg = palette.bg, bold = true },
    Error = { fg = palette.error, bg = palette.bg, bold = true },
    TabLine = { fg = palette.gray, bg = palette.alt_bg },
    TabLineSel = { fg = palette.white, bg = palette.alt_bg },
    TabLineFill = { fg = palette.white, bg = palette.alt_bg },
    WinSeparator = { fg = palette.medium_gray, bg = palette.bg },
    DiagnosticFloatingError = { fg = palette.error },
    FloatBorder = { fg = palette.light_gray },
  }
end

return M
