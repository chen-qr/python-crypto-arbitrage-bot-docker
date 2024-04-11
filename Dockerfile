FROM python:3.9

WORKDIR /app

# ccxt能从不同交易所获取数据
RUN pip install ccxt

# 从多个交易所请求数据时，为了避免网络IO造成线程堵塞，使用异步支持
RUN pip install asyncio