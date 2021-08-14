class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)
#===========================================================
# USERS       ROUTES
#===========================================================

# Users Index
    if req.path == '/users' &&  req.get?
      users = User.all
      return [
        200, { 'Content-Type' => 'application/json' }, 
        [ users.to_json ]
      ]
 # list specific record table users
       elsif req.path.match(/users/) && req.get?
         id = req.path.split('/')[2] 
         user = User.find_by(id:id)
         if user
           
            return [
            200, { 'Content-Type' => 'application/json' }, 
                [ user.to_json ]
              ]
            else
            return [
             204, { 'Content-Type' => 'application/json' },
             [ { error: 'user not found' }.to_json ]
             ]
            end
           
            

    # #User Create
          elsif req.path == '/users' &&  req.post?
               body = JSON.parse(req.body.read)
               user = User.create(body)
               if user
                 return [201, { 'Content-Type' => 'application/json' }, 
                   [ user.to_json ]]
               end

   #User Update
          elsif req.path.match(/users/) && req.patch?
            
                  id = req.path.split('/')[2] 
                  body = JSON.parse(req.body.read)
                  user = User.find_by(id:id)
               if user     
       #           user.update 
                  return [202, { 'Content-Type' => 'application/json' }, 
                  [ user.to_json ]]
               end

  # #User Delete
              elsif req.path.match(/users/) && req.delete?
                  id = req.path.split('/')[2] 
                  body = JSON.parse(req.body.read)
                   user = User.find_by(id:id)
                   if user
          #            user.destroy(body) 
                   return [200, { 'Content-Type' => 'application/json' }, 
                    [ { message: 'user Destroyed' }.to_json ]]
                 end

    #=======================================================================
    #CARDS ROUTES
    #=======================================================================


    #Card Index

# list all records table cards
    elsif req.path == '/cards' && req.get?
    cards = Card.all
    return [
        200, { 'Content-Type' => 'application/json' }, 
        [ cards.to_json ]
      ]
# list specific record table cards
elsif req.path.match(/cards/) && req.get?
  id = req.path.split('/')[2] 
  card = Card.find_by(id:id)
  if card
     
     return [200, { 'Content-Type' => 'application/json' },[ card.to_json ]
       ]
     else
     return [
      404, { 'Content-Type' => 'application/json' },
      [ { error: 'card not found' }.to_json ]
      ]
     end


  #card Create
elsif req.path == '/cards' &&  req.post?
  body = JSON.parse(req.body.read)
  card = Card.create(body)
  if card
    return [201, { 'Content-Type' => 'application/json' }, 
      [ card.to_json ]]
  end

  #Card Update
elsif req.path.match(/cards/) && req.patch?
            
  id = req.path.split('/')[2] 
  body = JSON.parse(req.body.read)
  card = Card.find_by(id:id)
  if card     
      card.update 
       return [202, { 'Content-Type' => 'application/json' }, 
       [ card.to_json ]]
   end


  #Card Delete
elsif req.path.match(/cards/) && req.delete?
  id = req.path.split('/')[2] 
  body = JSON.parse(req.body.read)
   card = Card.find_by(id:id)
   if card
      card.destroy(body) 
   return [200, { 'Content-Type' => 'application/json' }, 
    [ { message: 'card Destroyed' }.to_json ]]
 end
    else
      res.write "Path Not Found"

    end

    res.finish
  end

end
