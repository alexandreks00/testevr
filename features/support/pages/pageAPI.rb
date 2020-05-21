class PageAPI

def request_cep(cep)
    ibge = 0

    url = DATA['url']
    if cep == "cep_valido" 
        cep = DATA['cep_valido'].sample 
    else
        cep = DATA['cep_invalido'].sample
    end
        RestClient.get(url + cep) do |response, request, result|
            @response = response
            if @response.code == 400
                break
            end
            @body = JSON.parse(@response)
                ibge= @body['ibge']
                
            
        end
        return ibge
        
end




end #
