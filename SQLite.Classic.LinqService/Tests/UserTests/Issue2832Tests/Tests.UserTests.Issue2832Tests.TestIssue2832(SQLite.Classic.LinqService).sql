(700954) SELECT 
	t700954.Id = t700953.Id
FROM [DctSetpointtype(700953)] as t700953 (spt)
		LEFT JOIN (
			[VWellTree(700956)] as t700956 (t2)
				INNER JOIN [DctOu(700958)] as t700958 (tp2) ON ({t700956.ShopId?}? = {t700958.Id})
				LEFT JOIN [UacUsersDatagroup(700961)] as t700961 (cudg) ON ({t700958.Id} = {t700961.DatagroupId} AND {t700961.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700966)] as t700966 (oudg) ON ({t700958.ParentId?}? = {t700966.DatagroupId} AND {t700966.UserId} = 150 AND {t700966.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700986)] as t700986 (d) ON ({t700956.WellId?}? = {t700986.WellId})
		)  ON ({t700986.SetpointtypeId} = {t700953.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700961.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700966.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
