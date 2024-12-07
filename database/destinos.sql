INSERT INTO guia_mochileiro_pobre.imagem_destino (url)
VALUES
('https://jpimg.com.br/uploads/2023/05/turismo-no-rio-de-janeiro-veja-o-que-visitar-na-cidade-maravilhosa-1024x683.jpg'),
('https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-gramado-capa2019-04-820x430.jpg'),
('https://capital.sp.gov.br/documents/34276/0/WhatsApp+Image+2024-12-04+at+14.57.55.jpeg/8eb996bd-0059-f29a-7e9f-e7e0bfaa64c5?t=1733335410661'),
('https://imgmd.net/images/v1/guia/1685947/lagoa-da-pampulha.jpg'),
('https://media.staticontent.com/media/pictures/04641818-297a-4f28-b635-b15e2fb31087'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF7uCWUvCGOR-FWs8HO0ikyL4kejbMReCXfg&s'),
('https://www.viagensecaminhos.com/wp-content/uploads/2023/12/praia-de-atalaia-aracaju.jpg'),
('https://imgmd.net/images/v1/guia/1704987/porto-seguro.jpg');

-- Rio de Janeiro
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Janeiro', 'Família', 3000.00, 'Quente','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Fevereiro', 'Casal', 2800.00, 'Quente','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Março', 'Amigos', 2500.00, 'Quente','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Abril', 'Sozinho', 2200.00, 'Frio','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Maio', 'Família', 2100.00, 'Frio','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Junho', 'Casal', 2300.00, 'Frio','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Julho', 'Amigos', 2500.00, 'Frio','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Agosto', 'Família', 2400.00, 'Frio','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Setembro', 'Casal', 2300.00, 'Quente','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Outubro', 'Amigos', 2500.00, 'Quente','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Novembro', 'Sozinho', 2200.00, 'Quente','Brasil','RJ', 1),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Dezembro', 'Família', 2800.00, 'Quente','Brasil','RJ', 1);


-- Gramado
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Janeiro', 'Família', 3500.00, 'Frio', 'Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Fevereiro', 'Casal', 3300.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Março', 'Amigos', 3000.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Abril', 'Sozinho', 2800.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Maio', 'Família', 2700.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Junho', 'Casal', 3200.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Julho', 'Amigos', 3300.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Agosto', 'Família', 3100.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Setembro', 'Casal', 2900.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Outubro', 'Amigos', 3000.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Novembro', 'Sozinho', 2700.00, 'Frio','Brasil','RS', 2),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Dezembro', 'Família', 3500.00, 'Frio','Brasil','RS', 2);

-- São Paulo
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Janeiro', 'Família', 2500.00, 'Quente','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Fevereiro', 'Casal', 2300.00, 'Quente','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Março', 'Amigos', 2200.00, 'Quente','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Abril', 'Sozinho', 2000.00, 'Frio','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Maio', 'Família', 2100.00, 'Frio','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Junho', 'Casal', 2200.00, 'Frio','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Julho', 'Amigos', 2300.00, 'Frio','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Agosto', 'Família', 2200.00, 'Frio','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Setembro', 'Casal', 2300.00, 'Quente','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Outubro', 'Amigos', 2400.00, 'Quente','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Novembro', 'Sozinho', 2100.00, 'Quente','Brasil','SP', 3),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Dezembro', 'Família', 2500.00, 'Quente','Brasil','SP', 3);


-- Belo Horizonte
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Janeiro', 'Família', 2000.00, 'Quente', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Fevereiro', 'Casal', 1800.00, 'Quente', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Março', 'Amigos', 1700.00, 'Quente', 'Brasil', 'MG',4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Abril', 'Sozinho', 1500.00, 'Frio', 'Brasil', 'MG',4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Maio', 'Família', 1600.00, 'Frio', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Junho', 'Casal', 1700.00, 'Frio', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Julho', 'Amigos', 1800.00, 'Frio', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Agosto', 'Família', 1900.00, 'Frio', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Setembro', 'Casal', 1700.00, 'Quente', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Outubro', 'Amigos', 1800.00, 'Quente', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Novembro', 'Sozinho', 1500.00, 'Quente', 'Brasil', 'MG', 4),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Dezembro', 'Família', 2000.00, 'Quente', 'Brasil', 'MG', 4);

-- Curitiba
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Janeiro', 'Família', 2200.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Fevereiro', 'Casal', 2000.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Março', 'Amigos', 1900.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Abril', 'Sozinho', 1700.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Maio', 'Família', 1800.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Junho', 'Casal', 1900.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Julho', 'Amigos', 2000.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Agosto', 'Família', 2100.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Setembro', 'Casal', 1900.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Outubro', 'Amigos', 2000.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Novembro', 'Sozinho', 1700.00, 'Frio', 'Brasil', 'PR', 5),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Dezembro', 'Família', 2200.00, 'Frio', 'Brasil', 'PR', 5);

-- Natal
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Janeiro', 'Família', 2500.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Fevereiro', 'Casal', 2300.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Março', 'Amigos', 2200.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Abril', 'Sozinho', 2000.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Maio', 'Família', 2100.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Junho', 'Casal', 2200.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Julho', 'Amigos', 2300.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Agosto', 'Família', 2400.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Setembro', 'Casal', 2200.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Outubro', 'Amigos', 2300.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Novembro', 'Sozinho', 2000.00, 'Quente', 'Brasil', 'RN', 6),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Dezembro', 'Família', 2500.00, 'Quente', 'Brasil', 'RN', 6);

-- Aracaju
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Janeiro', 'Família', 2400.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Fevereiro', 'Casal', 2200.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Março', 'Amigos', 2100.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Abril', 'Sozinho', 1900.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Maio', 'Família', 2000.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Junho', 'Casal', 2100.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Julho', 'Amigos', 2200.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Agosto', 'Família', 2300.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Setembro', 'Casal', 2100.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Outubro', 'Amigos', 2200.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Novembro', 'Sozinho', 1900.00, 'Quente', 'Brasil', 'SE', 7),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Dezembro', 'Família', 2400.00, 'Quente', 'Brasil', 'SE', 7);

-- Porto Seguro
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, numero_pessoas, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Janeiro', 'Família', 2600.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Fevereiro', 'Casal', 2400.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Março', 'Amigos', 2300.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Abril', 'Sozinho', 2100.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Maio', 'Família', 2200.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Junho', 'Casal', 2300.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Julho', 'Amigos', 2400.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Agosto', 'Família', 2500.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Setembro', 'Casal', 2300.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Outubro', 'Amigos', 2400.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Novembro', 'Sozinho', 2100.00, 'Quente', 'Brasil', 'BA', 8),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Dezembro', 'Família', 2600.00, 'Quente', 'Brasil', 'BA', 8);
