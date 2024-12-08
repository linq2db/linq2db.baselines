(307157) SELECT 
	t307157.Id = t307156.Id
FROM [DctSetpointtype(307156)] as t307156 (spt)
		LEFT JOIN (
			(307193) SELECT 
				t307193.SetpointtypeId = t307189.SetpointtypeId
			FROM [VWellTree(307159)] as t307159 (t2)
					INNER JOIN [DctOu(307161)] as t307161 (tp2) ON ({t307159.ShopId?}? = {t307161.Id})
					LEFT JOIN [UacUsersDatagroup(307164)] as t307164 (cudg) ON ({t307161.Id} = {t307164.DatagroupId} AND {t307164.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307169)] as t307169 (oudg) ON ({t307161.ParentId?}? = {t307169.DatagroupId} AND {t307169.UserId} = 150 AND {t307169.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307189)] as t307189 (d) ON ({t307159.WellId?}? = {t307189.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307164.Permission, t307169.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307193 (t2_1) ON ({t307193.SetpointtypeId?} = {t307156.Id})
