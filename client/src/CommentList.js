import React from 'react';

export default ({comments}) => {
  const renderedComments = comments.map((comment) => {
    let content;

    if (comment.status === 'approved') {
      content = comment.content;
    }

    if (comment.status === 'pending') {
      content = 'This comment is waiting moderation';
    }

    if (comment.status === 'rejected') {
      content = 'This comment is not allowed';
    }

    return <li key={comment.id}>{content}</li>;
  });

  return <ul>{renderedComments}</ul>;
};
