(140895) SELECT 
	t140895.Id = t140894.Id
FROM [DctSetpointtype(140894)] as t140894 (spt)
		LEFT JOIN (
			[VWellTree(140897)] as t140897 (t2)
				INNER JOIN [DctOu(140899)] as t140899 (tp2) ON ({t140897.ShopId?}? = {t140899.Id})
				LEFT JOIN [UacUsersDatagroup(140902)] as t140902 (cudg) ON ({t140899.Id} = {t140902.DatagroupId} AND {t140902.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140907)] as t140907 (oudg) ON ({t140899.ParentId?}? = {t140907.DatagroupId} AND {t140907.UserId} = 150 AND {t140907.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140927)] as t140927 (d) ON ({t140897.WellId?}? = {t140927.WellId})
		)  ON ({t140927.SetpointtypeId} = {t140894.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140902.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140907.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
