CREATE TABLE trades(
	id bigint,
	buyer_id integer,
	symbol text,
	order_quantity integer,
	bid_price numeric(5,2),
	order_time timestampe
);
