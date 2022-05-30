# Policies in Blockaid

To use Blockaid with an application, you need to specify a data-access policy, relevant database constraints, and cache key annotations if applicable.
You can do so in the following files:

| File name          | Content                                             | Format |
| ------------------ | --------------------------------------------------- | ------ |
| `policies.sql`     | Policy view definitions                             | `SELECT` queries separated by `;`|
| `const-decls.txt`  | Request context parameters                          | Lines of the form `name:type;`|
| `pk.txt`           | Uniqueness (incl. primary-key) constraints          | Lines of the form `table:col1,col2,...;`|
| `fk.txt`           | Foreign-key constraints                             | Lines of the form `table1.col1:table2.col2`|
| `deps.sql`         | Other constraints (of the form $Q_1 \subseteq Q_2$) | Snippets of the form `Q1; Q2;`|
| `cache.txt`        | Cache key annotations                               | Snippets of the form `key-pattern! Q1! Q2! ... Qn;`|

The easiest way to understand these formats is to check out our examples for [diaspora*](diaspora), [Spree](spree), and [Autolab](Autolab).

For more details about policies, constraints, and cache key annotations, please refer to [our paper](https://www.usenix.org/conference/osdi22/presentation/zhang).
