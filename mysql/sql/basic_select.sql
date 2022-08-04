SELECT
	a.seq
    ,a.groupName
	,b.codeKey
    ,b.codeName
FROM maplestory.ccg a
JOIN maplestory.cc b ON b.groupSeq = a.seq;


-- SELECT
-- a.seq
-- ,a.title
-- ,a.createDate
-- ,b.name
-- FROM maplestory.post a
-- left join maplestory.image b on b.postId = a.seq;
-- inner join maplestory.image b on b.postId = a.seq;
-- join maplestory.post b on b.writer = a.seq; 
-- 그냥 join만 사용하면 inner가 Default값