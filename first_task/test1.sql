SELECT *, COUNT(*) AS supplier_cnt
FROM(
SELECT part.p_brand, part.p_type, part.p_size
FROM part
INNER JOIN 
(SELECT partsupp.ps_partkey, supplier.s_comment
FROM partsupp
INNER JOIN supplier
ON partsupp.ps_suppkey = supplier.s_suppkey) AS t1
ON part.p_partkey = t1.ps_partkey
WHERE part.p_brand != 'Brand#45' AND part.p_type NOT LIKE 'MEDIUM POLISHED%'
AND (part.p_size = 49 OR part.p_size = 14 OR part.p_size = 23 OR part.p_size = 45 OR part.p_size = 19 OR part.p_size = 3 OR part.p_size = 36 OR part.p_size = 9)
AND t1.s_comment NOT LIKE '%Customer%Complaints%') AS foo
GROUP BY (p_brand, p_type, p_size);