<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Neovim Configuration</title>
    <style>
        :root {
            --bg-primary: #1e1e2e;
            --bg-secondary: #313244;
            --bg-tertiary: #45475a;
            --text-primary: #cdd6f4;
            --text-secondary: #a6adc8;
            --accent-primary: #89b4fa;
            --accent-secondary: #f38ba8;
            --accent-green: #a6e3a1;
            --accent-yellow: #f9e2af;
            --accent-purple: #cba6f7;
            --border-color: #45475a;
            --code-bg: #11111b;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
            background-color: var(--bg-primary);
            color: var(--text-primary);
            line-height: 1.6;
            overflow-x: hidden;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 80px 0;
            background: linear-gradient(135deg, var(--bg-primary) 0%, var(--bg-secondary) 100%);
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, var(--accent-primary) 0%, transparent 70%);
            opacity: 0.05;
            animation: pulse 10s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(135deg, var(--accent-primary) 0%, var(--accent-purple) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            position: relative;
            z-index: 1;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            color: var(--text-secondary);
            margin-bottom: 2rem;
            position: relative;
            z-index: 1;
        }

        .hero-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
            position: relative;
            z-index: 1;
        }

        .btn {
            padding: 12px 30px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            border: 2px solid transparent;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent-primary) 0%, var(--accent-purple) 100%);
            color: var(--bg-primary);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(137, 180, 250, 0.3);
        }

        .btn-secondary {
            background: transparent;
            color: var(--accent-primary);
            border-color: var(--accent-primary);
        }

        .btn-secondary:hover {
            background: var(--accent-primary);
            color: var(--bg-primary);
        }

        /* Features Section */
        .features {
            padding: 80px 0;
            background: var(--bg-secondary);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .feature-card {
            background: var(--bg-primary);
            padding: 2rem;
            border-radius: 12px;
            border: 1px solid var(--border-color);
            transition: all 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            border-color: var(--accent-primary);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .feature-title {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--accent-primary);
        }

        .feature-list {
            list-style: none;
        }

        .feature-list li {
            padding: 0.5rem 0;
            position: relative;
            padding-left: 2rem;
            color: var(--text-secondary);
        }

        .feature-list li::before {
            content: '→';
            position: absolute;
            left: 0;
            color: var(--accent-green);
            font-weight: bold;
        }

        /* Setup Section */
        .setup {
            padding: 80px 0;
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 3rem;
            color: var(--accent-primary);
        }

        .setup-steps {
            display: grid;
            gap: 2rem;
        }

        .setup-step {
            background: var(--bg-secondary);
            padding: 2rem;
            border-radius: 12px;
            border: 1px solid var(--border-color);
        }

        .step-title {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--accent-yellow);
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .step-number {
            background: var(--accent-yellow);
            color: var(--bg-primary);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }

        .code-block {
            background: var(--code-bg);
            padding: 1.5rem;
            border-radius: 8px;
            overflow-x: auto;
            font-family: 'Fira Code', 'Consolas', monospace;
            margin: 1rem 0;
            border: 1px solid var(--border-color);
            position: relative;
        }

        .code-block code {
            color: var(--text-primary);
            font-size: 0.9rem;
            line-height: 1.5;
        }

        .copy-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background: var(--bg-tertiary);
            border: 1px solid var(--border-color);
            color: var(--text-secondary);
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.8rem;
            transition: all 0.3s ease;
        }

        .copy-btn:hover {
            background: var(--accent-primary);
            color: var(--bg-primary);
        }

        /* Plugins Section */
        .plugins {
            padding: 80px 0;
            background: var(--bg-secondary);
        }

        .plugins-table {
            background: var(--bg-primary);
            border-radius: 12px;
            overflow: hidden;
            border: 1px solid var(--border-color);
            margin-top: 2rem;
        }

        .plugins-table table {
            width: 100%;
            border-collapse: collapse;
        }

        .plugins-table th {
            background: var(--bg-tertiary);
            padding: 1rem;
            text-align: left;
            color: var(--accent-primary);
            font-weight: 600;
        }

        .plugins-table td {
            padding: 1rem;
            border-bottom: 1px solid var(--border-color);
        }

        .plugins-table tr:hover {
            background: var(--bg-secondary);
        }

        .plugin-name {
            color: var(--accent-purple);
            font-family: 'Fira Code', monospace;
            font-weight: 500;
        }

        /* Keybindings Section */
        .keybindings {
            padding: 80px 0;
        }

        .keybindings-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1rem;
            margin-top: 2rem;
        }

        .keybinding {
            background: var(--bg-secondary);
            padding: 1rem;
            border-radius: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 1px solid var(--border-color);
            transition: all 0.3s ease;
        }

        .keybinding:hover {
            border-color: var(--accent-primary);
            transform: translateX(5px);
        }

        .key {
            background: var(--bg-tertiary);
            padding: 5px 10px;
            border-radius: 5px;
            font-family: 'Fira Code', monospace;
            font-size: 0.9rem;
            color: var(--accent-green);
            border: 1px solid var(--border-color);
        }

        .key-action {
            color: var(--text-secondary);
        }

        /* Footer */
        .footer {
            padding: 40px 0;
            text-align: center;
            background: var(--bg-secondary);
            border-top: 1px solid var(--border-color);
        }

        .footer-quote {
            font-style: italic;
            color: var(--text-secondary);
            margin-bottom: 2rem;
            font-size: 1.1rem;
        }

        .footer-credits {
            color: var(--text-secondary);
        }

        .footer-credits a {
            color: var(--accent-primary);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-credits a:hover {
            color: var(--accent-purple);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }

            .hero-subtitle {
                font-size: 1.2rem;
            }

            .features-grid {
                grid-template-columns: 1fr;
            }

            .keybindings-grid {
                grid-template-columns: 1fr;
            }
        }

        /* Animations */
        .fade-in {
            animation: fadeIn 0.8s ease-in;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1 class="fade-in">Modern Neovim Configuration</h1>
            <p class="hero-subtitle fade-in">Lightning fast, beautifully minimal, and ridiculously powerful</p>
            <div class="hero-buttons fade-in">
                <a href="https://github.com/yourname/nvim-config" class="btn btn-primary">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                    </svg>
                    Get Started
                </a>
                <a href="#setup" class="btn btn-secondary">
                    Installation Guide
                </a>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <h2 class="section-title">🚀 Why Use This Config?</h2>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">⚡</div>
                    <h3 class="feature-title">Lightning Fast</h3>
                    <ul class="feature-list">
                        <li>Lazy-loading keeps startup under 50ms</li>
                        <li>Minimal plugins with maximum utility</li>
                        <li>No gimmicks, no bloated dashboards</li>
                        <li>Optimized for performance</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">🎯</div>
                    <h3 class="feature-title">Laser Focused</h3>
                    <ul class="feature-list">
                        <li>Clean UI with just what you need</li>
                        <li>Smart defaults like space as leader</li>
                        <li>Sensible 2-space indentation</li>
                        <li>No unnecessary colorschemes</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">🛠️</div>
                    <h3 class="feature-title">Production Ready</h3>
                    <ul class="feature-list">
                        <li>Full LSP support out of the box</li>
                        <li>Integrated formatting and linting</li>
                        <li>Git integration that just works</li>
                        <li>Tested on WSL, macOS, and Linux</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Setup Section -->
    <section class="setup" id="setup">
        <div class="container">
            <h2 class="section-title">🔧 Setup</h2>
            <div class="setup-steps">
                <div class="setup-step">
                    <h3 class="step-title">
                        <span class="step-number">1</span>
                        Prerequisites
                    </h3>
                    <p>Ensure you have Neovim 0.10+ and required tools installed:</p>
                    <div class="code-block">
                        <button class="copy-btn" onclick="copyCode(this)">Copy</button>
                        <code># Ubuntu/Debian
sudo apt install neovim ripgrep nodejs npm git

# macOS
brew install neovim ripgrep node git

# Arch
sudo pacman -S neovim ripgrep nodejs npm git</code>
                    </div>
                </div>
                <div class="setup-step">
                    <h3 class="step-title">
                        <span class="step-number">2</span>
                        Installation
                    </h3>
                    <p>Clone the configuration and launch Neovim:</p>
                    <div class="code-block">
                        <button class="copy-btn" onclick="copyCode(this)">Copy</button>
                        <code># Backup existing config (optional)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this configuration
git clone https://github.com/yourname/nvim-config ~/.config/nvim

# Launch Neovim
nvim</code>
                    </div>
                    <p style="margin-top: 1rem; color: var(--accent-green);">✨ First launch automatically installs all plugins via lazy.nvim!</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Plugins Section -->
    <section class="plugins">
        <div class="container">
            <h2 class="section-title">📦 Included Plugins</h2>
            <div class="plugins-table">
                <table>
                    <thead>
                        <tr>
                            <th>Plugin</th>
                            <th>Purpose</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="plugin-name">lazy.nvim</span></td>
                            <td>Modern plugin manager with lazy loading</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">catppuccin</span></td>
                            <td>Beautiful pastel theme that's easy on the eyes</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">neo-tree</span></td>
                            <td>File explorer with icons and git status</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">lualine</span></td>
                            <td>Fast and pretty statusline</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">telescope</span></td>
                            <td>Fuzzy finder for files, text, and more</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">nvim-treesitter</span></td>
                            <td>Advanced syntax highlighting and code understanding</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">nvim-lspconfig</span></td>
                            <td>Native LSP support for IDE features</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">mason.nvim</span></td>
                            <td>Portable package manager for LSP servers</td>
                        </tr>
                        <tr>
                            <td><span class="plugin-name">none-ls.nvim</span></td>
                            <td>Hook external tools into Neovim's LSP</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <!-- LSP Section -->
    <section class="setup">
        <div class="container">
            <h2 class="section-title">🧠 LSP Support</h2>
            <div class="setup-step">
                <p>Pre-configured language servers for immediate productivity:</p>
                <div class="code-block">
                    <button class="copy-btn" onclick="copyCode(this)">Copy</button>
                    <code>ensure_installed = {
  "lua_ls",     -- Lua (for Neovim config)
  "clangd",     -- C/C++
  "sqls",       -- SQL
  "pyright",    -- Python
  "tsserver",   -- TypeScript/JavaScript
  "rust_analyzer", -- Rust
  "gopls",      -- Go
}</code>
                </div>
                <p style="margin-top: 1rem;">Features include: hover docs, auto-completion, diagnostics, go-to-definition, code actions, and more!</p>
            </div>
        </div>
    </section>

    <!-- Keybindings Section -->
    <section class="keybindings">
        <div class="container">
            <h2 class="section-title">⌨️ Key Bindings</h2>
            <div class="keybindings-grid">
                <div class="keybinding">
                    <span class="key">&lt;leader&gt;ff</span>
                    <span class="key-action">Find files (Telescope)</span>
                </div>
                <div class="keybinding">
                    <span class="key">&lt;leader&gt;fg</span>
                    <span class="key-action">Search text (grep)</span>
                </div>
                <div class="keybinding">
                    <span class="key">&lt;leader&gt;n</span>
                    <span class="key-action">Toggle Neo-tree</span>
                </div>
                <div class="keybinding">
                    <span class="key">&lt;leader&gt;gf</span>
                    <span class="key-action">Format file</span>
                </div>
                <div class="keybinding">
                    <span class="key">K</span>
                    <span class="key-action">Hover documentation</span>
                </div>
                <div class="keybinding">
                    <span class="key">gd</span>
                    <span class="key-action">Go to definition</span>
                </div>
                <div class="keybinding">
                    <span class="key">&lt;leader&gt;ca</span>
                    <span class="key-action">Code actions</span>
                </div>
                <div class="keybinding">
                    <span class="key">&lt;leader&gt;rn</span>
                    <span class="key-action">Rename symbol</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p class="footer-quote">"The best editor is the one that gets out of your way."</p>
            <div class="footer-credits">
                <p>Built with ❤️ by the Neovim community</p>
                <p>
                    Inspired by <a href="https://github.com/ThePrimeagen">ThePrimeagen</a> • 
                    <a href="https://github.com/folke/lazy.nvim">Lazy.nvim</a> • 
                    <a href="https://github.com/catppuccin/nvim">Catppuccin</a>
                </p>
            </div>
        </div>
    </footer>

    <script>
        function copyCode(btn) {
            const codeBlock = btn.parentElement.querySelector('code');
            const text = codeBlock.textContent;
            
            navigator.clipboard.writeText(text).then(() => {
                const originalText = btn.textContent;
                btn.textContent = 'Copied!';
                btn.style.background = 'var(--accent-green)';
                btn.style.color = 'var(--bg-primary)';
                
                setTimeout(() => {
                    btn.textContent = originalText;
                    btn.style.background = '';
                    btn.style.color = '';
                }, 2000);
            });
        }

        // Add scroll animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        document.querySelectorAll('.feature-card, .setup-step, .keybinding').forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(20px)';
            el.style.transition = 'all 0.6s ease';
            observer.observe(el);
        });
    </script>
</body>
</html>
