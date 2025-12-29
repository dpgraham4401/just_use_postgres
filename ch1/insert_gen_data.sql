INSERT INTO trades (id, buyer_id, symbol, order_quantity, bid_price, order_times)
SELECT
	id,
	random(1, 10) as buyer_id,
	(array['APPL', 'F', 'DASH'])[random(1,3)] as symbol,
	random(1,20) as order_quantity,
	round(random(10.00,20.00), 2) as bid_price,
	now() as order_time
FROM generate_series(1, 1000) as id;
