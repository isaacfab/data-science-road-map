class new_dog():
    """a new dog gets instantiated"""
    
    def __init__(self, name):
        """this code runs when a new object of this class is created"""
        # attributes of this class
        self.name = name
    
    #an example method for this class
    def fetch(self):
        print(self.name + " is fetching give her a treat!")
        

#classes can inherit from each other
class lab_dog(new_dog):
        
    def __init__(self, name):
        """this code runs when a new object of this class is created"""
        # attributes of this class
        super().__init__(name)
        
    def retrieve(self):
        print(self.name + " is a lab so of course she is retrieving!")