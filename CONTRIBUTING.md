# 贡献指南

感谢你对 Duet 项目的兴趣！

## 如何贡献

### 报告问题

如果你发现了 bug 或有功能建议，请：

1. 检查 [Issues](https://github.com/potatokillar/duet/issues) 是否已有相关问题
2. 如果没有，创建新 Issue，详细描述问题或建议

### 提交代码

1. Fork 本仓库
2. 创建功能分支：`git checkout -b feature/your-feature`
3. 提交更改：`git commit -m 'feat: add some feature'`
4. 推送分支：`git push origin feature/your-feature`
5. 创建 Pull Request

### 代码规范

- 保持 SKILL.md 简洁明了
- 遵循现有的文档格式
- 添加适当的示例

### 测试

在提交 PR 前，请确保：

1. 在本地测试 skill 安装
2. 验证 skill 在 Claude Code 中能正常加载
3. 测试完整的工作流程

## 开发设置

```bash
# 克隆仓库
git clone https://github.com/potatokillar/duet.git
cd duet

# 安装到本地 Claude Code（测试用）
./skills/duet/install.sh
```

## 许可证

通过贡献代码，你同意你的代码将以 MIT 许可证发布。
