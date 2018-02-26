describe('GET /') do
    it('Painel API Ok') do
        get '/'
        expect_status 200
    end
end

describe('POST /login') do
    before do
        @login = {email: 'mamisumi@gmail.com', senha: '1234'}
    end

    it('Login Painel') do
        post '/login', @login
        expect_status 200
    end
end