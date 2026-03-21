#!/bin/bash

# Duet Skill 安装脚本
# 将 duet skill 安装到 Claude Code

set -e

SKILL_NAME="duet"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"
REPO_SKILL_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "📦 Installing duet skill..."

# 创建目标目录
mkdir -p "$SKILL_DIR"

# 复制 skill 文件
cp "$REPO_SKILL_DIR/SKILL.md" "$SKILL_DIR/SKILL.md"

echo "✅ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "🎉 Duet skill installed successfully!"
echo ""
echo "Usage: In Claude Code, simply start a complex development task"
echo "       and mention 'duet' or let Claude discover it automatically."
