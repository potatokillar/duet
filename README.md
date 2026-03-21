# Duet - Claude + Codex 协作工作流

**Duet** 是一个 Claude Code skill，协调 Claude（规划/切分）与 Codex（审核/执行）协同工作，实现质量优先、兼顾效率的开发工作流。

## 核心理念

| Agent | 擅长 |
|-------|------|
| **Claude Code** | 规划、架构设计、复杂推理、任务切分 |
| **Codex** | 高效执行、代码审查、终端任务 |

## 工作流程

```
Claude 规划 → Codex 审核 + 建议切分 → Claude 切分任务 → 用户确认 → Codex 执行
```

## 安装

### 方式 1：一键安装

```bash
git clone https://github.com/potatokillar/duet.git
cd duet
./skills/duet/install.sh
```

### 方式 2：手动安装

```bash
mkdir -p ~/.claude/skills/duet
curl -o ~/.claude/skills/duet/SKILL.md https://raw.githubusercontent.com/potatokillar/duet/main/skills/duet/SKILL.md
```

### 方式 3：作为子模块

```bash
git submodule add https://github.com/potatokillar/duet.git .claude/skills/duet
```

## 前置条件

- 已安装 [Codex CLI](https://github.com/openai/codex)：`npm install -g @openai/codex`
- 已配置 Codex 认证
- 项目已初始化 git

## 使用方法

在 Claude Code 中开始复杂开发任务时，只需提及：

```
使用 duet 工作流来开发这个功能
```

Claude Code 会自动加载 skill 并引导你完成整个流程。

## 工作流程详解

| 阶段 | 执行者 | 说明 |
|------|--------|------|
| 1. 规划 | Claude | 创建设计文档，列出参考文件 |
| 2. 审核 | Codex | 检查逻辑、可行性、一致性，建议任务切分 |
| 3. 切分 | Claude | 根据审核建议，切分为最小执行单元 |
| 4. 确认 | 用户 | 审阅任务列表，确认或调整 |
| 5. 执行 | Codex | 按任务逐一执行，验证验收标准 |

## 目录结构

```
docs/superpowers/
├── specs/
│   └── YYYY-MM-DD-feature-design.md    # 规划文档
└── tasks/
    └── YYYY-MM-DD-feature/
        ├── 01-task-name.md              # 任务设计文档
        ├── 02-task-name.md
        └── ...
```

## 问题分级

| 级别 | 处理方式 |
|------|----------|
| **LOW** - 格式/文档问题 | Claude 自动修复 |
| **MEDIUM** - 澄清性问题 | Claude 自动补充 |
| **HIGH** - 架构/逻辑问题 | 人工介入 |

## License

MIT
