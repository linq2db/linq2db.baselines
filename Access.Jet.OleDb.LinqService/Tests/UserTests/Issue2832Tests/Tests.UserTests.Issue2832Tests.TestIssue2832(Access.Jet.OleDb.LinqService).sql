(307231) SELECT 
	t307231.Id = t307230.Id
FROM [DctSetpointtype(307230)] as t307230 (spt)
		LEFT JOIN (
			(307267) SELECT 
				t307267.SetpointtypeId = t307263.SetpointtypeId
			FROM [VWellTree(307233)] as t307233 (t2)
					INNER JOIN [DctOu(307235)] as t307235 (tp2) ON ({t307233.ShopId?}? = {t307235.Id})
					LEFT JOIN [UacUsersDatagroup(307238)] as t307238 (cudg) ON ({t307235.Id} = {t307238.DatagroupId} AND {t307238.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307243)] as t307243 (oudg) ON ({t307235.ParentId?}? = {t307243.DatagroupId} AND {t307243.UserId} = 150 AND {t307243.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307263)] as t307263 (d) ON ({t307233.WellId?}? = {t307263.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307238.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307243.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307267 (t2_1) ON ({t307267.SetpointtypeId?} = {t307230.Id})
