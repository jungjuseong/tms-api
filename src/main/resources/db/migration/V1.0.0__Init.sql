create schema if not exists roouty;

create TABLE IF not EXISTS roouty.product (
	id binary(16) not NULL,
	name varchar(150) not NULL,
	description varchar(200),
	price numeric(16, 4) DEFAULT 0 not NULL,
	count numeric(8, 0),
	image_url varchar(40),
	PRIMARY KEY(id)
);

create TABLE if not EXISTS roouty.tag (
	id binary(16) not NULL,
	name varchar(20),
	PRIMARY KEY(id)
);

create TABLE if not EXISTS roouty.product_tag (
	product_id binary(16) not NULL,
	tag_id binary(16) not NULL,
	FOREIGN KEY (product_id)
		REFERENCES product(id),
	FOREIGN KEY(tag_id)
		REFERENCES tag(id)
);

insert into product values (UUID_TO_BIN('6d62d909-f957-430e-8689-b5129c0bb75e'), 'Antifragile', 'Antifragile - Things that gains from disorder. By Nassim Nicholas Taleb', 17.15, 33, '/images/Antifragile.jpg');
insert into product values (UUID_TO_BIN('a0a4f044-b040-410d-8ead-4de0446aec7e'), 'Sapiens', 'Sapiens - A brief history of mankind. By Yuval Noah Harari', 7.99, 115, '/images/Sapiens.jpeg');
insert into product values (UUID_TO_BIN('808a2de1-1aaa-4c25-a9b9-6612e8f29a38'), 'Thinking Fast and Slow', 'Thinking Fast and Slow. By winner of Nobel Prize - Danniel Kahneman', 17.32, 738, '/images/ThinkingFast.jpeg');
insert into product values (UUID_TO_BIN('510a0d7e-8e83-4193-b483-e27e09ddc34d'), 'How to Fail at Almost Everything and Still Win Big', 'How to Fail at Almost Everything and Still Win Big - Kind of Story of My Life. By Scott Adams', 15.00, 820, '/images/HowToFail.jpeg');
insert into product values (UUID_TO_BIN('03fef6ac-1896-4ce8-bd69-b798f85c6e0b'), 'Influence', 'Influence - Psychology of Persuasion. By Robert B. Cialdini Ph.D.', 99.99, 1, '/images/Influence.jpeg');
insert into product values (UUID_TO_BIN('d3588630-ad8e-49df-bbd7-3167f7efb246'), 'Poor Charlie''s Almanack', 'Poor Charlie''s Almanack - Wits and Wisdom of Charles T. Munger. By Peter Kauffman', 10.99, 801, '/images/PoorCharlie.jpeg');
insert into product values (UUID_TO_BIN('819e1fbf-8b7e-4f6d-811f-693534916a8b'), 'Hackers & Painters', 'Hackers & Painters - Big Ideas from Computer Age. By Paul Graham', 14, 808, '/images/Hackers.jpg');
insert into product values (UUID_TO_BIN('3395a42e-2d88-40de-b95f-e00e1502085b'), 'Seeking Wisdom', 'Seeking Wisdom - From Darwin To Mungar. By Peter Bevelin',  12, 127, '/images/Seeking.jpg');
insert into product values (UUID_TO_BIN('3395a43e-2d88-40de-b95f-e00e1502085b'), 'Thinking In Bets', 'Thinking In Bets - Making Smarter Decision. When you don''t have all the facts. By Annie Duke', 18, 438, '/images/ThinkingIn.jpg');
insert into product values (UUID_TO_BIN('837ab141-399e-4c1f-9abc-bace40296bac'), 'Zero to One', 'Zero to One - notes on Startups, Or How to build future. Peter Theil', 15, 175, '/images/ZeroToOne.jpg');

insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f601'), 'book');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f602'), 'psychology');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f603'), 'influence');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f604'), 'wisdom');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f605'), 'startup');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f606'), 'investing');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f607'), 'lessions');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f608'), 'history');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f609'), 'howto');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f610'), 'journey');
insert into tag (id, name) values (UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f611'), 'decision');

insert into product_tag values (UUID_TO_BIN('6d62d909-f957-430e-8689-b5129c0bb75e'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f602'));
insert into product_tag values (UUID_TO_BIN('6d62d909-f957-430e-8689-b5129c0bb75e'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f601'));
insert into product_tag values (UUID_TO_BIN('a0a4f044-b040-410d-8ead-4de0446aec7e'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f608'));
insert into product_tag values (UUID_TO_BIN('a0a4f044-b040-410d-8ead-4de0446aec7e'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f601'));
insert into product_tag values (UUID_TO_BIN('808a2de1-1aaa-4c25-a9b9-6612e8f29a38'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f602'));
insert into product_tag values (UUID_TO_BIN('808a2de1-1aaa-4c25-a9b9-6612e8f29a38'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f601'));
insert into product_tag values (UUID_TO_BIN('808a2de1-1aaa-4c25-a9b9-6612e8f29a38'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f607'));
insert into product_tag values (UUID_TO_BIN('808a2de1-1aaa-4c25-a9b9-6612e8f29a38'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f611'));
insert into product_tag values (UUID_TO_BIN('510a0d7e-8e83-4193-b483-e27e09ddc34d'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f602'));
insert into product_tag values (UUID_TO_BIN('510a0d7e-8e83-4193-b483-e27e09ddc34d'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f601'));
insert into product_tag values (UUID_TO_BIN('510a0d7e-8e83-4193-b483-e27e09ddc34d'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f610'));
insert into product_tag values (UUID_TO_BIN('03fef6ac-1896-4ce8-bd69-b798f85c6e0b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f602'));
insert into product_tag values (UUID_TO_BIN('03fef6ac-1896-4ce8-bd69-b798f85c6e0b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f603'));
insert into product_tag values (UUID_TO_BIN('d3588630-ad8e-49df-bbd7-3167f7efb246'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f604'));
insert into product_tag values (UUID_TO_BIN('d3588630-ad8e-49df-bbd7-3167f7efb246'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f607'));
insert into product_tag values (UUID_TO_BIN('819e1fbf-8b7e-4f6d-811f-693534916a8b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f605'));
insert into product_tag values (UUID_TO_BIN('819e1fbf-8b7e-4f6d-811f-693534916a8b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f606'));
insert into product_tag values (UUID_TO_BIN('819e1fbf-8b7e-4f6d-811f-693534916a8b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f607'));
insert into product_tag values (UUID_TO_BIN('3395a42e-2d88-40de-b95f-e00e1502085b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f604'));
insert into product_tag values (UUID_TO_BIN('3395a42e-2d88-40de-b95f-e00e1502085b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f607'));
insert into product_tag values (UUID_TO_BIN('3395a43e-2d88-40de-b95f-e00e1502085b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f611'));
insert into product_tag values (UUID_TO_BIN('3395a43e-2d88-40de-b95f-e00e1502085b'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f609'));
insert into product_tag values (UUID_TO_BIN('837ab141-399e-4c1f-9abc-bace40296bac'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f609'));
insert into product_tag values (UUID_TO_BIN('837ab141-399e-4c1f-9abc-bace40296bac'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f605'));
insert into product_tag values (UUID_TO_BIN('837ab141-399e-4c1f-9abc-bace40296bac'), UUID_TO_BIN('00000000-b5c6-4896-987c-f30f3678f601'));

create TABLE IF not EXISTS user (
	id BINARY(16) not NULL,
	username varchar(16),
	password varchar(72),
	first_name varchar(16),
	last_name varchar(16),
	email varchar(24),
	phone varchar(24),
	user_status varchar(16) not NULL DEFAULT 'ACTIVE',
	role varchar(16) not NULL DEFAULT 'ROLE_USER',
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS user_token (
	id binary(16) not NULL,
	refresh_token varchar(128),
	user_id binary(16) not NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (user_id) REFERENCES user(id)
);

create TABLE IF not EXISTS address (
	id binary(16) not NULL,
	number varchar(24),
	residency varchar(32),
	street varchar(32),
	city varchar(24),
	state varchar(24),
	country varchar(24),
	pincode varchar(10),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS user_address (
	user_id binary(16) not NULL ,
	address_id binary(16) not NULL,
	FOREIGN KEY (user_id) REFERENCES user(id),
	FOREIGN KEY(address_id)	REFERENCES address(id)
);

create TABLE IF not EXISTS payment (
	id binary(16) not NULL,
	authorized boolean,
	message varchar(64),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS card (
	id binary(16)  not NULL,
	number varchar(16),
	user_id binary(16) not NULL UNIQUE,
	last_name varchar(16),
	expires varchar(5),
	cvv varchar(4),
	FOREIGN KEY(user_id) REFERENCES user(id),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS shipment (
	id binary(16)  not NULL,
	est_delivery_date timestamp,
	carrier varchar(24),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS orders (
	id binary(16) not NULL,
	customer_id binary(16) not NULL,
	address_id binary(16) not NULL,
	card_id binary(16) ,
	order_date timestamp,
	total numeric(16, 4) DEFAULT 0 not NULL,
	payment_id binary(16),
	shipment_id binary(16),
	status varchar(24),
	FOREIGN KEY(customer_id) REFERENCES user(id),
	FOREIGN KEY(address_id)	REFERENCES address(id),
	FOREIGN KEY(card_id) REFERENCES card(id),
	FOREIGN KEY(payment_id)	REFERENCES payment(id),
	FOREIGN KEY(shipment_id) REFERENCES shipment(id),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS item (
	id binary(16) not NULL,
	product_id binary(16) not NULL,
	quantity numeric(8, 0),
	unit_price numeric(16, 4) not NULL,
	FOREIGN KEY(product_id)	REFERENCES product(id),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS order_item (
	id binary(16) not NULL,
	order_id binary(16) not NULL,
	item_id binary(16) not NULL,
	FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY(item_id) REFERENCES item(id)
);

create TABLE IF not EXISTS authorization (
	id binary(16)  not NULL,
	order_id binary(16) not NULL,
	authorized boolean,
	time timestamp,
	message varchar(16),
	error varchar(24),
	FOREIGN KEY (order_id) REFERENCES orders(id),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS cart (
	id binary(16) not NULL,
	user_id binary(16) not NULL,
	FOREIGN KEY (user_id) REFERENCES user(id),
	PRIMARY KEY(id)
);

create TABLE IF not EXISTS cart_item (
	cart_id binary(16) not NULL,
	item_id binary(16) not NULL,
	FOREIGN KEY (cart_id) REFERENCES cart(id),
	FOREIGN KEY(item_id) REFERENCES item(id)
);

insert into user (id, username, password, first_name, last_name, email, phone, user_status, role) values(UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38222'), 'scott', '{bcrypt}$2a$10$neR0EcYY5./tLVp4litNyuBy/kfrTsqEv8hiyqEKX0TXIQQwC/5Rm', 'Bruce', 'Scott', 'bruce@scott.db', '234234234', 'ACTIVE', 'USER');
insert into user (id, username, password, first_name, last_name, email, phone, user_status, role) values(UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38223'), 'scott2', '{bcrypt}$2a$10$neR0EcYY5./tLVp4litNyuBy/kfrTsqEv8hiyqEKX0TXIQQwC/5Rm', 'Bruce', 'Scott', 'bruce2@scott.db', '234234234', 'ACTIVE', 'ADMIN');
INSERT INTO address VALUES (UUID_TO_BIN('a731fda1-aaad-42ea-bdbc-a27eeebe2cc0'), '9I-999', 'Fraser Suites Le Claridge', 'Champs-Elysees', 'Paris', 'Île-de-France', 'France', '75008');
insert into user_address values (UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38222'), UUID_TO_BIN('a731fda1-aaad-42ea-bdbc-a27eeebe2cc0'));
INSERT INTO card VALUES (UUID_TO_BIN('618ffaff-cbcd-48d4-8848-a15601e6725b'), '999-999-999-999', UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38222'), 'User', '12/28', '0000');
insert into cart values (UUID_TO_BIN('cacab31d-e73c-4112-af7c-b68530f38222'), UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38222'));
insert into cart values (UUID_TO_BIN('cacab31d-e73c-4112-af7c-b68530f38223'), UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38223'));
insert into item values(UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad702'), UUID_TO_BIN('6d62d909-f957-430e-8689-b5129c0bb75e'), 1, 17.15);
insert into cart_item values (UUID_TO_BIN('cacab31d-e73c-4112-af7c-b68530f38222'), UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad702'));
insert into item values(UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad703'), UUID_TO_BIN('d3588630-ad8e-49df-bbd7-3167f7efb246'), 1, 10.99);
insert into cart_item values (UUID_TO_BIN('cacab31d-e73c-4112-af7c-b68530f38222'), UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad703'));
insert into orders(id, customer_id, address_id, card_id, order_date, total, payment_id, shipment_id, status) values (UUID_TO_BIN('0a59ba9f-629e-4445-8129-b9bce1985d6a'),UUID_TO_BIN('a1b9b31d-e73c-4112-af7c-b68530f38222'), UUID_TO_BIN('a731fda1-aaad-42ea-bdbc-a27eeebe2cc0'), UUID_TO_BIN('618ffaff-cbcd-48d4-8848-a15601e6725b'), current_timestamp, 38.14, NULL, NULL, 'CREATED');
INSERT INTO item VALUES
  (UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad704'), UUID_TO_BIN('6d62d909-f957-430e-8689-b5129c0bb75e'), 1, 17.15),
  (UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad705'), UUID_TO_BIN('3395a42e-2d88-40de-b95f-e00e1502085b'), 1, 20.99);
INSERT INTO order_item VALUES
  (UUID_TO_BIN('66682caa-a6d8-46ed-a173-ff822f754e1c'), UUID_TO_BIN('0a59ba9f-629e-4445-8129-b9bce1985d6a'), UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad704')),
  (UUID_TO_BIN('efeefa71-2760-412a-9ec8-0a040d90f02c'), UUID_TO_BIN('0a59ba9f-629e-4445-8129-b9bce1985d6a'), UUID_TO_BIN('a7384042-e4aa-4c93-85ae-31a346dad705'));