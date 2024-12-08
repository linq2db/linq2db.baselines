(243962) SELECT 
	t243962.Id = t243961.Id
FROM [DctSetpointtype(243961)] as t243961 (spt)
		LEFT JOIN (
			[VWellTree(243964)] as t243964 (t2)
				INNER JOIN [DctOu(243966)] as t243966 (tp2) ON ({t243964.ShopId?}? = {t243966.Id})
				LEFT JOIN [UacUsersDatagroup(243969)] as t243969 (cudg) ON ({t243966.Id} = {t243969.DatagroupId} AND {t243969.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243974)] as t243974 (oudg) ON ({t243966.ParentId?}? = {t243974.DatagroupId} AND {t243974.UserId} = 150 AND {t243974.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243994)] as t243994 (d) ON ({t243964.WellId?}? = {t243994.WellId})
		)  ON ({t243994.SetpointtypeId} = {t243961.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243969.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t243974.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
