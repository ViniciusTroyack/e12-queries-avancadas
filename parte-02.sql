INSERT INTO enderecos
(rua, pais, cidade)
    values
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');



INSERT INTO usuarios
(nome, email, senha, endereco_id)
    select 'Cauan', 'cauan@exemple.com', 1234, id
    FROM enderecos
    WHERE rua like '%Paulista%' AND cidade = 'São Paulo';

INSERT INTO usuarios
(nome, email, senha, endereco_id)
    select 'Chrystian', 'chrystian@exemple.com', 4321, id
    FROM enderecos
    WHERE rua like '%Marcelino%' AND cidade = 'Curitiba';

INSERT INTO usuarios
(nome, email, senha, endereco_id)
    select 'Matheus', 'matheus@exemple.com', 3214, id
    FROM enderecos
    WHERE rua like '%Higienópolis%' AND cidade = 'Londrina';


INSERT INTO redes_sociais
("name")
    values
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');


INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Cauan%'),
    (select id from redes_sociais where "name" like '%Youtube%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Chrystian%'),
    (select id from redes_sociais where "name" like '%Youtube%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Matheus%'),
    (select id from redes_sociais where "name" like '%Youtube%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Chrystian%'),
    (select id from redes_sociais where "name" like '%Twitter%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Cauan%'),
    (select id from redes_sociais where "name" like '%Twitter%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Matheus%'),
    (select id from redes_sociais where "name" like '%Instagram%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Matheus%'),
    (select id from redes_sociais where "name" like '%Facebook%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Chrystian%'),
    (select id from redes_sociais where "name" like '%Instagram%')
);

INSERT INTO usuario_rede_sociais
(usuario_id, rede_social_id )
    values(
    (select id from usuarios where nome like '%Cauan%'),
    (select id from redes_sociais where "name" like '%TikTok%')
);



