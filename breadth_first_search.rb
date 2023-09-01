require 'set'

class BreadthFirstSearch
    def self.find_mango_seller(graph)
        checked = Set[]        
        queue = graph["you"]

        while queue != [] do
            person = queue.shift

            if !checked.include?(person)
                if person.start_with?("MangoSeller")
                    return person
                else
                    checked.add(person)
                    queue += graph[person]
                end
            end
        end
    end
end