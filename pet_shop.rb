def pet_shop_name(pet_shop)
  return @pet_shop[:name]
end
#
def total_cash(pet_shop)
  return @pet_shop[:admin][:total_cash]
end

def add_cash(cash, amount)
  cash[:admin][:total_cash] += amount
  return cash
end

def remove_cash(cash, amount)
  cash[:admin][:total_cash] -= amount
  return cash
end
#
def pets_sold(pets_sold)
  return pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold, amount)
  #retrieve the number of pets currently sold
  #increase this by the amount sold and increase the key value pair
  pets_sold[:admin][:pets_sold] += amount
  return pets_sold
end

def stock_count(pet_shop)
  count = 0
  for pets in pet_shop[:pets]
    count += 1
  end
  return count
end
#
def pets_by_breed(pet_shop, breed)
  # loop through the pet_shop array, checking each hash for the breed.
  pets =[]
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      pets << pet
    end
  end
  return pets
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      pets << pet
    end
  end
  return pets
end
#
def find_pet_by_name(pet_shop, name)
  for pets in pet_shop[:pets]
    if pets[:name] == name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pets in pet_shop[:pets]
    pets.delete_if{pets[:name] == name}
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  count = 0
  for pets in pet_shop[:pets]
     count += 1
   end
   return count
end

def customer_pet_count(customers)
  count = 0
  for pets in customers[:pets]
    count += 1
  end
  return count
end

def add_pet_to_customer(customers, new_pet)
  count = 0
  customers[:pets] << new_pet
  for pets in customers[:pets]
    count += 1
  end
  return count
end
