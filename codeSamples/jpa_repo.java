@NoRepositoryBean
public interface JpaRepository<T, ID extends Serializable> 
		extends PagingAndSortingRepository<T, ID> {

	List<T> findAll();

	List<T> findAll(Sort sort);
	
	List<T> findAll(Iterable<ID> ids);

	<S extends T> List<S> save(Iterable<S> entities);

	void flush();

	T saveAndFlush(T entity);

	void deleteInBatch(Iterable<T> entities);

	void deleteAllInBatch();

	T getOne(ID id);
}