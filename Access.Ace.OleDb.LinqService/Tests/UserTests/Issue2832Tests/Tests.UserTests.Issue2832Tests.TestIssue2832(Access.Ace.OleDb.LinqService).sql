(307222) SELECT 
	t307222.Id = t307221.Id
FROM [DctSetpointtype(307221)] as t307221 (spt)
		LEFT JOIN (
			(307258) SELECT 
				t307258.SetpointtypeId = t307254.SetpointtypeId
			FROM [VWellTree(307224)] as t307224 (t2)
					INNER JOIN [DctOu(307226)] as t307226 (tp2) ON ({t307224.ShopId?}? = {t307226.Id})
					LEFT JOIN [UacUsersDatagroup(307229)] as t307229 (cudg) ON ({t307226.Id} = {t307229.DatagroupId} AND {t307229.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307234)] as t307234 (oudg) ON ({t307226.ParentId?}? = {t307234.DatagroupId} AND {t307234.UserId} = 150 AND {t307234.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307254)] as t307254 (d) ON ({t307224.WellId?}? = {t307254.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307229.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307234.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307258 (t2_1) ON ({t307258.SetpointtypeId?} = {t307221.Id})
