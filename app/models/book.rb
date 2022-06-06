class Book < ApplicationRecord

#     <--------callback methods--------->
before_save :merge_names

# after_destroy :update_log

private
def merge_names
self.name= self.name + " BY " + self.author
#puts "name merging..!!"
end

# private
# def update_log
# logger.info "========alas ! A book has been deleted #{self.name}======="
# #logger.info "==A book has been deleted=="
# end


    # <------here validations is happing--------->
    # here presence checks the name &author present or not
    validates :name, :author, presence:true

    # here uniqueness checks name of uniqueness
    validates:name, uniqueness: true

    # here name of length checks
    validates :name, length: { minimum:3 }
end

 
 

