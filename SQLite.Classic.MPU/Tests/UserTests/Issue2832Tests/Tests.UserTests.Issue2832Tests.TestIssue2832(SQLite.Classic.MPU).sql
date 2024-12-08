(427970) SELECT 
	t427970.Id = t427969.Id
FROM [DctSetpointtype(427969)] as t427969 (spt)
		LEFT JOIN (
			[VWellTree(427972)] as t427972 (t2)
				INNER JOIN [DctOu(427974)] as t427974 (tp2) ON ({t427972.ShopId?}? = {t427974.Id})
				LEFT JOIN [UacUsersDatagroup(427977)] as t427977 (cudg) ON ({t427974.Id} = {t427977.DatagroupId} AND {t427977.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(427982)] as t427982 (oudg) ON ({t427974.ParentId?}? = {t427982.DatagroupId} AND {t427982.UserId} = 150 AND {t427982.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428002)] as t428002 (d) ON ({t427972.WellId?}? = {t428002.WellId})
		)  ON ({t428002.SetpointtypeId} = {t427969.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t427977.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t427982.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
