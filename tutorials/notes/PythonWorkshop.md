# Python Workshop

## Marco Brigham

## Tweets

- Casting is when we perform type change (e.g., 14*3.0 -> 42.0).

- Multiline strings in are defined with triple quotes '''.

- Example of an f-string:
```python
x = 0.314159265
print(f'{x:.3f}')
> 0.314
print(f'{x:.4e}')
> 3.1416e-01
```

- range(start, end, step) exclusive of *end*!

- Indetation signals logical structure.

- plot(x, y, color='r', marker='o') or plot(x, y, 'ro')

- Ensemble statistics: multiple realizations of the same experiment under the same conditions.

- Lists are much more natural for storing data for other purposes than computation (e.g., storing numerical indexes and text).

- Initialize step_end, t_range, v
```python
step_end = int(t_max / dt) - 1
t_range = np.linspace(0, t_max, num=step_end, endpoint=False)
v = np.ones(step_end)
```
