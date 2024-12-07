(168134) SELECT 
	t168134.Id = t168133.Id
FROM [DctSetpointtype(168133)] as t168133 (spt)
		LEFT JOIN (
			(168171) SELECT 
				t168171.SetpointtypeId        = t168166.SetpointtypeId,
				t168171.Permission            = t168141.Permission?,
				t168171.Inheritablepermission = t168146.Inheritablepermission?
			FROM [VWellTree(168136)] as t168136 (t2)
					INNER JOIN [DctOu(168138)] as t168138 (tp2) ON ({t168136.ShopId?}? = {t168138.Id})
					LEFT JOIN [UacUsersDatagroup(168141)] as t168141 (cudg) ON ({t168138.Id} = {t168141.DatagroupId} AND {t168141.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168146)] as t168146 (oudg) ON ({t168138.ParentId?}? = {t168146.DatagroupId} AND {t168146.UserId} = 150 AND {t168146.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168166)] as t168166 (d) ON ({t168136.WellId?}? = {t168166.WellId})
		) as t168171 (t1) ON ({t168171.SetpointtypeId?} = {t168133.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168171.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168171.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
