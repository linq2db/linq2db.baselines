(243937) SELECT 
	t243937.Id = t243936.Id
FROM [DctSetpointtype(243936)] as t243936 (spt)
		LEFT JOIN (
			[VWellTree(243939)] as t243939 (t2)
				INNER JOIN [DctOu(243941)] as t243941 (tp2) ON ({t243939.ShopId?}? = {t243941.Id})
				LEFT JOIN [UacUsersDatagroup(243944)] as t243944 (cudg) ON ({t243941.Id} = {t243944.DatagroupId} AND {t243944.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243949)] as t243949 (oudg) ON ({t243941.ParentId?}? = {t243949.DatagroupId} AND {t243949.UserId} = 150 AND {t243949.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243969)] as t243969 (d) ON ({t243939.WellId?}? = {t243969.WellId})
		)  ON ({t243969.SetpointtypeId} = {t243936.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243944.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t243949.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
