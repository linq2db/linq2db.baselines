(160357) SELECT 
	t160357.Id = t160356.Id
FROM [DctSetpointtype(160356)] as t160356 (spt)
		LEFT JOIN (
			[VWellTree(160359)] as t160359 (t2)
				INNER JOIN [DctOu(160361)] as t160361 (tp2) ON ({t160359.ShopId?}? = {t160361.Id})
				LEFT JOIN [UacUsersDatagroup(160364)] as t160364 (cudg) ON ({t160361.Id} = {t160364.DatagroupId} AND {t160364.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(160369)] as t160369 (oudg) ON ({t160361.ParentId?}? = {t160369.DatagroupId} AND {t160369.UserId} = 150 AND {t160369.Inheritablepermission} > 0)
				INNER JOIN [Deviation(160389)] as t160389 (d) ON ({t160359.WellId?}? = {t160389.WellId})
		)  ON ({t160389.SetpointtypeId} = {t160356.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t160364.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t160369.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
