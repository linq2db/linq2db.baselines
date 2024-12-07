(427922) SELECT 
	t427922.Id = t427921.Id
FROM [DctSetpointtype(427921)] as t427921 (spt)
		LEFT JOIN (
			[VWellTree(427924)] as t427924 (t2)
				INNER JOIN [DctOu(427926)] as t427926 (tp2) ON ({t427924.ShopId?}? = {t427926.Id})
				LEFT JOIN [UacUsersDatagroup(427929)] as t427929 (cudg) ON ({t427926.Id} = {t427929.DatagroupId} AND {t427929.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(427934)] as t427934 (oudg) ON ({t427926.ParentId?}? = {t427934.DatagroupId} AND {t427934.UserId} = 150 AND {t427934.Inheritablepermission} > 0)
				INNER JOIN [Deviation(427954)] as t427954 (d) ON ({t427924.WellId?}? = {t427954.WellId})
		)  ON ({t427954.SetpointtypeId} = {t427921.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t427929.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t427934.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
