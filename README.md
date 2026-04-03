# 📝 Todo App（SwiftUI × CoreData）

## 📱 概要
タスクを管理するシンプルなTodoアプリです。  
CoreDataを使用してデータを永続化しています。

---

## 🚀 主な機能
- タスクの追加
- タスクの削除（スワイプ）
- タスクの完了チェック（即時反映）
- データの永続化（アプリ再起動後も保持）

---

## 🛠 使用技術
- SwiftUI
- CoreData
- MVVM

---

## 💡 工夫した点
- CoreDataとSwiftUIの状態管理の連携を実装
- `@ObservedObject` を使用し、データ変更時に即座にUIへ反映
- ListとButtonのタップ競合を `.buttonStyle(.plain)` で解消

---

## 🔧 今後の改善
- タスク編集機能
- 並び替え機能
- UI改善（ダークモード対応など）

---

## 📸 スクリーンショット
### 起動画面
![起動](Tscreenshot1.png)

### 入力画面
![入力](Tscreenshot2.png)

### チェック画面
![チェック](Tscreenshot3.png)


