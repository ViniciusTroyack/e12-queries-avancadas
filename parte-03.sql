-- Primeiro
SELECT * FROM enderecos;


-- Segundo
SELECT * 
    FROM enderecos
    JOIN usuarios
    ON
    enderecos.id = usuarios.endereco_id;


-- Terceito
SELECT rs.id, rs."name", u.id, u.nome, u.email, u.senha, u.endereco_id FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id;


-- Quarto
SELECT rs.id, rs."name", u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade
FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
    join enderecos e on u.endereco_id = e.id;


-- Quinto
SELECT rs."name", u.nome, u.email, e.cidade FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
	join enderecos e on u.endereco_id = e.id;


-- Sexto
SELECT rs."name", u.nome, u.email, e.cidade FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
	join enderecos e on u.endereco_id = e.id
    where rs."name" = 'Youtube';


-- Setimo
SELECT rs."name", u.nome, u.email, e.cidade FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
	join enderecos e on u.endereco_id = e.id
    where rs."name" = 'Instagram';


-- Oitavo
SELECT rs."name", u.nome, u.email, e.cidade FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
	join enderecos e on u.endereco_id = e.id
    where rs."name" = 'Facebook';


-- Nono
SELECT rs."name", u.nome, u.email, e.cidade FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
	join enderecos e on u.endereco_id = e.id
    where rs."name" = 'TikTok';


-- Decimo
SELECT rs."name", u.nome, u.email, e.cidade FROM usuario_rede_sociais urs 
	join redes_sociais rs ON urs.rede_social_id = rs.id 
	join usuarios u on urs.usuario_id = u.id
	join enderecos e on u.endereco_id = e.id
    where rs."name" = 'Twitter';