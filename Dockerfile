FROM python:3.9

WORKDIR /app

# ccxt能从不同CEX交易所获取数据
RUN pip install ccxt

# web3能从不同DEX智能合约获取数据
RUN pip install web3

# 从多个交易所请求数据时，为了避免网络IO造成线程堵塞，使用异步支持
RUN pip install asyncio