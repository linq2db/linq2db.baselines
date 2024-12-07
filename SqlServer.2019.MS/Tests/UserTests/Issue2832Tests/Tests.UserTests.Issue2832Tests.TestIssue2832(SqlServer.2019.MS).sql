(244953) SELECT 
	t244953.Id = t244952.Id
FROM [DctSetpointtype(244952)] as t244952 (spt)
		LEFT JOIN (
			[VWellTree(244955)] as t244955 (t2)
				INNER JOIN [DctOu(244957)] as t244957 (tp2) ON ({t244955.ShopId?}? = {t244957.Id})
				LEFT JOIN [UacUsersDatagroup(244960)] as t244960 (cudg) ON ({t244957.Id} = {t244960.DatagroupId} AND {t244960.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244965)] as t244965 (oudg) ON ({t244957.ParentId?}? = {t244965.DatagroupId} AND {t244965.UserId} = 150 AND {t244965.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244985)] as t244985 (d) ON ({t244955.WellId?}? = {t244985.WellId})
		)  ON ({t244985.SetpointtypeId} = {t244952.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244960.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t244965.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
