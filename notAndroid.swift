class notAndroid<T> {
    func deleteDataObjectCommon(model: NSManagedObject) -> Result<Bool,Error> {
        if let context = appDelegate?.persistentContainer.viewContext {
            context.delete(model)
            do {
                try context.save()
                return .success(true)
            } catch {
                print("Error while deleting Teacher profile! \(error.localizedDescription)")
            }
        }
        return .failure("Failed to Delete Object" as! Error )
    }
}
