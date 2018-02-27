describe('GET /') do
    it('Painel API Ok') do
        get '/'
        expect_status 200
    end
end

describe('POST /login') do
    describe('status 200') do
        before do
            @login = {email: 'mamisumi@gmail.com', senha: '1234'}
        end
        it('Login Painel') do
            post '/login', @login
            expect_status 200
        end
    end
    
    describe('status 401') do
        before do
            @login = {email: '', senha: '1234'}
        end
        it('Email inválido') do
            post '/login', @login
            expect_status 401
        end
        it('Senha obrigatorio') do
            post '/login', email: 'mamisumi@gmail.com', senha: ''
            expect_status 401
        end
    end

    after(:each) do |e|
        puts json_body if e.exception
    end
end



