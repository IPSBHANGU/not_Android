class notAndroid<T> {
      func deleteDataObjectCommon(model: NSManagedObject) -> (Bool, String) {
        if let context = appDelegate?.persistentContainer.viewContext {
            context.delete(model)
            do {
                try context.save()
                return (true, "Objects Deletion Success!")
            } catch {
                print("Error while deleting Teacher profile! \(error.localizedDescription)")
            }
        }
        return (false, "Context is nil")
    }
}
