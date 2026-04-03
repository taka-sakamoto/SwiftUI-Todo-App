# TodoList

## アプリ概要
- タスクを管理するシンプルなTodoアプリ
- CoreDataを使用してデータを永続化

---

## Screenshot
<p align="center">
  <img src="todolist01.png" width="250">
  <img src="todolist02.png" width="250">
  <img src="todolist03.png" width="250">
</p>

---

## 使用技術
- SwiftUI
- CoreData
- MVVM

---

## 主な機能
- タスク追加
- タスク削除（スワイプ）
- 完了チェック（即時反映）
- 永続化（アプリ再起動後も保持）

---

## 工夫した点
- CoreDataとSwiftUIの状態管理の連携
- @ObservedObjectを使い即時UI更新を実現
- ListとButtonのタップ競合を解消（.buttonStyle(.plain)）

---

## 今後の改善
- 編集機能の強化
- 並び替え機能
- ダークモード対応


